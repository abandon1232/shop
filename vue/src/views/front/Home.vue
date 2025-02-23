<template>
  <div class="main-content">
    <div class="container">
      <div class="content-wrapper">
        <!-- 左侧分类导航 -->
        <div class="category-sidebar">
          <h2 class="section-title">商品分类</h2>
          <div class="category-list">
            <div class="category-item" v-for="item in typeData" :key="item.id" @click="navTo('/front/type?id=' + item.id)">
              <img :src="item.img" :alt="item.name">
              <span>{{ item.name }}</span>
            </div>
          </div>
        </div>

        <!-- 中间主要内容区 -->
        <div class="main-section">
          <!-- 轮播图区域 -->
          <el-carousel class="banner-carousel" height="400px">
            <el-carousel-item v-for="(item, index) in carousel_top" :key="index">
              <img :src="item" alt="banner">
            </el-carousel-item>
          </el-carousel>

          <!-- 热卖商品区域 -->
          <div class="section-block">
            <div class="section-header">
              <h2>热卖商品</h2>
              <div class="section-more">查看更多 ></div>
            </div>
            <div class="products-grid">
              <div class="product-card" v-for="item in goodsData" :key="item.id">
                <div class="product-image">
                  <img :src="item.img" :alt="item.name">
                </div>
                <div class="product-info">
                  <h3 class="product-name">{{ item.name }}</h3>
                  <div class="product-price">
                    <span class="currency">¥</span>
                    <span class="amount">{{ item.price }}</span>
                    <span class="unit">/ {{ item.unit }}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- 猜你喜欢区域 -->
          <div class="section-block">
            <div class="section-header">
              <h2>猜你喜欢</h2>
              <div class="section-more">查看更多 ></div>
            </div>
            <div class="products-grid">
              <div class="product-card" v-for="item in recommendData" :key="item.id">
                <div class="product-image">
                  <img :src="item.img" :alt="item.name">
                </div>
                <div class="product-info">
                  <h3 class="product-name">{{ item.name }}</h3>
                  <div class="product-price">
                    <span class="currency">¥</span>
                    <span class="amount">{{ item.price }}</span>
                    <span class="unit">/ {{ item.unit }}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- 右侧用户信息区 -->
        <div class="user-sidebar">
          <div class="user-profile">
            <img :src="user.avatar" :alt="user.name" @click="navTo('/front/person')">
            <h3>Hi，{{ user.name }}</h3>
          </div>
          <div class="promo-banner">
            <img src="@/assets/imgs/right.png" alt="promotional banner">
          </div>
          <div class="quick-actions">
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {

  data() {
    return {
        user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
        typeData: [],
        goodsData:[],
        recommendData:[],
        carousel_top:[
          require('@/assets/imgs/carousel-1.png'),
          require('@/assets/imgs/carousel-2.png'),
          require('@/assets/imgs/carousel-9.png'),
      ]
    }
  },
  mounted() {
    this.loadType()
    this.loadGoods()
    this.loadRecommend()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadRecommend(){
      this.$request.get('/goods/recommend').then(res => {
        if (res.code === '200') {
          this.recommendData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadType() {
      this.$request.get('/type/selectAll').then(res => {
        if (res.code === '200') {
          this.typeData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadGoods() {
      this.$request.get('/goods/selectTop15').then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url) {
      location.href = url
    },
  }
}
</script>

<style scoped>
.main-content {
  min-height: 100vh;
  background-color: #f5f5f5;
  padding: 20px 0;
  background-image: url('@/assets/imgs/bg.jpg');
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
}

.container {
  max-width: 1400px;
  margin: 0 auto;
  padding: 0 20px;
}

.content-wrapper {
  display: grid;
  grid-template-columns: 250px 1fr 300px;
  gap: 20px;
}

/* 左侧分类导航样式 */
.category-sidebar {
  background: white;
  border-radius: 12px;
  padding: 20px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.category-item {
  display: flex;
  align-items: center;
  padding: 12px;
  cursor: pointer;
  transition: all 0.3s;
  border-radius: 8px;
}

.category-item:hover {
  background: #f0f2ff;
}

.category-item img {
  width: 24px;
  height: 24px;
  margin-right: 12px;
}

/* 中间内容区样式 */
.main-section {
  background: transparent;
}

.banner-carousel {
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.section-block {
  background: white;
  border-radius: 12px;
  padding: 20px;
  margin-top: 20px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.section-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.section-header h2 {
  font-size: 20px;
  color: #333;
}

.section-more {
  color: #666;
  cursor: pointer;
}

.products-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 20px;
}

.product-card {
  background: white;
  border-radius: 8px;
  overflow: hidden;
  transition: all 0.3s;
  cursor: pointer;
}

.product-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

.product-image img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.product-info {
  padding: 12px;
}

.product-name {
  font-size: 14px;
  margin-bottom: 8px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.product-price {
  color: #ff4400;
  font-size: 16px;
}

/* 右侧用户信息样式 */
.user-sidebar {
  background: white;
  border-radius: 12px;
  padding: 20px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.user-profile {
  text-align: center;
  margin-bottom: 20px;
}

.user-profile img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-bottom: 12px;
  cursor: pointer;
  border: 2px solid #eee;
  transition: all 0.3s;
}

.user-profile img:hover {
  border-color: #4169E1;
}

.quick-actions {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 15px;
  margin-top: 20px;
}

.action-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 15px;
  cursor: pointer;
  border-radius: 8px;
  transition: all 0.3s;
}

.action-item:hover {
  background: #f0f2ff;
}

.action-item img {
  width: 28px;
  height: 28px;
  margin-bottom: 8px;
}

.promo-banner {
  margin: 20px 0;
}

.promo-banner img {
  width: 100%;
  border-radius: 8px;
}
</style>