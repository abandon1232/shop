<template>
  <div class="main-content">
    <div class="search-container">
      <div class="search-header">
        <div class="search-title">
          <span class="search-icon"><i class="el-icon-search"></i></span>
          <span class="search-text">搜索"{{name}}"的结果</span>
        </div>
      </div>

      <div class="content-wrapper">
        <div class="results-section">
          <div class="results-grid">
            <el-row :gutter="30">
              <el-col :lg="6" :md="8" :sm="12" :xs="24" v-for="item in goodsData" :key="item.id">
                <div class="product-card">
                  <div class="image-container">
                    <img :src="item.img" alt="" class="product-image">
                  </div>
                  <div class="product-info">
                    <h3 class="product-name">{{item.name}}</h3>
                    <div class="product-price">
                      <span class="currency">￥</span>
                      <span class="amount">{{item.price}}</span>
                      <span class="unit">/ {{item.unit}}</span>
                    </div>
                  </div>
                </div>
              </el-col>
            </el-row>
          </div>
        </div>

        <div class="recommend-section">
          <div class="recommend-header">
            <span class="recommend-icon"><i class="el-icon-star-on"></i></span>
            <span class="recommend-title">猜你喜欢</span>
          </div>
          <div class="recommend-list">
            <div v-for="item in recommendData" :key="item.id" 
                 class="recommend-item">
              <div class="image-container">
                <img :src="item.img" alt="" class="product-image">
              </div>
              <div class="product-info">
                <h3 class="product-name">{{item.name}}</h3>
                <div class="product-price">
                  <span class="currency">￥</span>
                  <span class="amount">{{item.price}}</span>
                  <span class="unit">/ {{item.unit}}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {

  data() {
    let name = this.$route.query.name
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      name: name,
      goodsData: [],
      recommendData: [],
    }
  },
  mounted() {
    this.loadGoods()
    this.loadRecommend()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadRecommend() {
      this.$request.get('/goods/recommend').then(res => {
        if (res.code === '200') {
          this.recommendData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadGoods() {
      this.$request.get('/goods/selectByName?name=' + this.name).then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url) {
      location.href = url
    }
  }
}
</script>

<style scoped>
.main-content {
  background-color: #f8f9fa;
  min-height: 100vh;
  padding: 30px 0;
}

.search-container {
  width: 85%;
  margin: 0 auto;
  max-width: 1400px;
}

.search-header {
  background: white;
  padding: 20px 30px;
  border-radius: 15px;
  margin-bottom: 20px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.search-title {
  display: flex;
  align-items: center;
  gap: 10px;
}

.search-icon {
  color: #409EFF;
  font-size: 24px;
}

.search-text {
  font-size: 20px;
  color: #2c3e50;
  font-weight: 600;
}

.content-wrapper {
  display: flex;
  gap: 20px;
}

.results-section {
  flex: 1;
  background: white;
  border-radius: 15px;
  padding: 25px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.recommend-section {
  width: 300px;
  background: white;
  border-radius: 15px;
  padding: 25px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.05);
}

.recommend-header {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-bottom: 20px;
}

.recommend-icon {
  color: #ff9f43;
  font-size: 22px;
}

.recommend-title {
  font-size: 18px;
  color: #2c3e50;
  font-weight: 600;
}

.product-card, .recommend-item {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  transition: all 0.3s ease;
  cursor: pointer;
  margin-bottom: 25px;
  border: 1px solid #eee;
}

.product-card:hover, .recommend-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
}

.image-container {
  position: relative;
  padding-top: 100%;
  overflow: hidden;
}

.product-image {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.product-info {
  padding: 15px;
}

.product-name {
  font-size: 15px;
  color: #2c3e50;
  margin: 0 0 10px 0;
  font-weight: 500;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  line-height: 1.4;
}

.product-price {
  display: flex;
  align-items: baseline;
}

.currency {
  color: #ff6b6b;
  font-size: 14px;
  margin-right: 2px;
}

.amount {
  color: #ff6b6b;
  font-size: 20px;
  font-weight: 600;
}

.unit {
  color: #999;
  font-size: 14px;
  margin-left: 5px;
}

@media screen and (max-width: 1200px) {
  .search-container {
    width: 95%;
  }
}

@media screen and (max-width: 992px) {
  .content-wrapper {
    flex-direction: column;
  }
  
  .recommend-section {
    width: 100%;
  }
  
  .recommend-list {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 20px;
  }
}

@media screen and (max-width: 576px) {
  .search-container {
    width: 100%;
    padding: 0 15px;
  }
  
  .search-header {
    padding: 15px;
  }
  
  .results-section,
  .recommend-section {
    padding: 15px;
  }
  
  .search-text {
    font-size: 18px;
  }
}
</style>
