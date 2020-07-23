<div class="cubebox-tmpl-wrap">
  {{#if loading}}
    <div class="loading"></div>
  {{/if}}

  <div class="carousel-box">
    <Carousel
      interval="3000"
      width="368"
      height="100"
      change={{this.change}}
      btns="hover"
      autoplay={{true}}
      class="cube-test">
      {{#list carouselList as item by item_index}}
        <Carousel.Item>
          <div class="carousel-item gclearfix">
          {{#list item as item2 by item2_index}}
            <a href="{{item2.link}}" class="item" target="_blank">
              <img src="{{item2.img | clipImage:'180_100_75'}}" width="180" height="100" alt="">
              <p class="ext">
                <span class="bg"></span>
                <span class="title">{{item2.title}}</span>
              </p>
            </a>
          {{/list}}
          </div>
        </Carousel.Item>
		  {{/list}}
	</Carousel>
  </div>

  <div class="infor-box">
    <div class="inner">
      <h2 class="tit">热门推荐</h2>
      <div class="list gclearfix">
        {{#list inforList as item by item_index}}
          <a href="{{item.link}}" target="_blank">
            <img src="{{item.img}}" width="26" height="26" alt="{{tiem.title}}"/>
            <span>{{item.title}}</span>
          </a>
        {{/list}}
      </div>  
    </div>
  </div>
</div>