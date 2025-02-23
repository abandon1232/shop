package com.example.service;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.example.common.enums.RoleEnum;
import com.example.entity.*;
import com.example.mapper.*;
import com.example.utils.TokenUtils;
import com.example.utils.UserCF;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.stream.Collectors;

/**
 * 商品信息表业务处理
 **/
@Service
public class GoodsService {

    @Resource
    private GoodsMapper goodsMapper;
    @Resource
    private UserMapper userMapper;

    /**
     * 新增
     */
    public void add(Goods goods) {
        Account currentUser = TokenUtils.getCurrentUser();
        if (RoleEnum.BUSINESS.name().equals(currentUser.getRole())) {
            goods.setBusinessId(currentUser.getId());
        }
        goodsMapper.insert(goods);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        goodsMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            goodsMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Goods goods) {
        goodsMapper.updateById(goods);
    }

    /**
     * 根据ID查询
     */
    public Goods selectById(Integer id) {
        return goodsMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Goods> selectAll(Goods goods) {
        return goodsMapper.selectAll(goods);
    }

    /**
     * 分页查询
     */
    public PageInfo<Goods> selectPage(Goods goods, Integer pageNum, Integer pageSize) {
        Account currentUser = TokenUtils.getCurrentUser();
        if (RoleEnum.BUSINESS.name().equals(currentUser.getRole())) {
            goods.setBusinessId(currentUser.getId());
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Goods> list = goodsMapper.selectAll(goods);
        return PageInfo.of(list);
    }

    public List<Goods> selectTop15() {
        return goodsMapper.selectTop15();
    }

    public List<Goods> selectByTypeId(Integer id) {
        return goodsMapper.selectByTypeId(id);
    }

    public List<Goods> selectByBusinessId(Integer id) {
        return goodsMapper.selectByBusinessId(id);
    }

    public List<Goods> selectByName(String name) {
        return goodsMapper.selectByName(name);
    }

    public List<Goods> recommend() {
        Account currentUser = TokenUtils.getCurrentUser();
        if (ObjectUtil.isEmpty(currentUser)) {
            // 没有用户登录
            return new ArrayList<>();
        }
        // 获取所有的用户信息
        List<User> allUsers = userMapper.selectAll(null);
        // 获取所有的商品信息
        List<Goods> allGoods = goodsMapper.selectAll(null);

        // 定义一个存储每个商品和每个用户关系的List
        List<RelateDTO> data = new ArrayList<>();
        // 定义一个存储最后返回给前端的商品List
        List<Goods> result = new ArrayList<>();

        // 开始计算每个商品和每个用户之间的关系数据
        for (Goods goods : allGoods) {
            Integer goodsId = goods.getId();
            for (User user : allUsers) {
                Integer userId = user.getId();
                int index = 1;
                RelateDTO relateDTO = new RelateDTO(userId, goodsId, index);
                data.add(relateDTO);
            }
        }

        // 数据准备结束后，就把这些数据一起喂给这个推荐算法
        List<Integer> goodsIds = UserCF.recommend(currentUser.getId(), data);
        // 把商品id转换成商品
        List<Goods> recommendResult = goodsIds.stream().map(goodsId -> allGoods.stream()
                        .filter(x -> x.getId().equals(goodsId)).findFirst().orElse(null))
                .limit(10).collect(Collectors.toList());

        if (CollectionUtil.isEmpty(recommendResult)) {
            // 随机给它推荐10个
            return getRandomGoods(10);
        }
        if (recommendResult.size() < 10) {
            int num = 10 - recommendResult.size();
            List<Goods> list = getRandomGoods(num);
            result.addAll(list);
        }
        return recommendResult;
    }

    private List<Goods> getRandomGoods(int num) {
        List<Goods> list = new ArrayList<>(num);
        List<Goods> goods = goodsMapper.selectAll(null);
        for (int i = 0; i < num; i++) {
            int index = new Random().nextInt(goods.size());
            list.add(goods.get(index));
        }
        return list;
    }
}