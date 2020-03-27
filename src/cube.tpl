<div class="cubebox-tmpl-wrap">
  {{#if loading}}
    <div class="loading"></div>
  {{/if}}

  <div class="carousel-box">
    <cube-carousel
      list="{{carouselList}}"
      slot="{{carouselTpl}}"
      width="368"
      height="100">
    </cube-carousel>
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