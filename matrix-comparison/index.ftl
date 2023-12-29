<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<style>
  :root {
    --primary: #0099cc;
    --body: #444444;
    --borderColor: #dadada;
    --light-bg: #f3f5fb;
  }

  .center {
    display: grid;
    place-items: center;
  }

  .text-1 {
    font-size: 1.125rem;
    font-weight: bolder;
  }
  
  button {
    background: none;
    background-color: unset;
    border: none;
    cursor: pointer;
    padding: 0;
  }

  .bg--ligth {
    background-color: var(--light-bg);
  }

  .bolder {
    font-weight: bolder;
  }

  .title--primary {
    margin: auto;
    text-align: center;
    color: var(--primary);
    padding-block: 2rem;
    font-size: 2rem;
  }

  .color--primary {
    color: var(--primary);
  }

  body * {
    box-sizing: border-box;
  }

  .table-boder--theme {
    border-color: #dadada;
    border-style: solid;
  }

  .flex {
    display: flex;
  }
  .g-1 {
    gap: 1rem;
  }

  .p-1 {
    padding: 1rem;
  }

  .table__header-row {
    height: 14rem;
  }


  @media only screen and (min-width: 1300px){
    .table__header-row {
      height: 14rem;
    }
  }


  .fake-header-row {
    z-index: 2;
    transition: transform 300ms;
    background-color: white;
    top: 0;
    transform: translateY(-4rem);
    margin: auto;
  }

  .fake-header-row .swiper-slide {
    margin: 0 !important;
  }

  .swiper-slide {
    width: 80%;
  }

  .fake-header-row--hide,
  .fake-header-row--hide * {
    transition: transform 0ms;
    font-size: 0;
    min-height: 0;
    height: 0;
    padding: 0;
  }

  .table {
    margin: auto;
  }

  .table__header-column {
    transform: translateY(1.5rem);
    min-width: 7rem;
    max-width: 37%;
  }

  @media only screen and (min-width: 580px) {
    .table__header-column {
      min-width: 14rem;
    }
  }

  @media only screen and (min-width: 680px) {
    .swiper-slide {
      width: 100%;
    }
  }

  .no-border-top {
    border-top: none;
  }

  .no-border-left {
    border-left: none;
  }

  .table__body-columns {
    width: 100%;
  }

  .fake-header-row--show {
    transition: transform 300ms;
    position: sticky;
    transform: translateY(0rem);
    border-bottom: solid black 1px;
  }

  .hide {
    display: none;
  }

  @media only screen and (max-width: 880px){
    .hide-on-680{
      display: none;
    }
  }

  .table__data-cell{
    height: 9rem;
  }

  .table__data-cell--special{
    height: 16rem;
  }

  @media only screen and (min-width: 1020){
    .table__data-cell--special{
      height: 14rem;
    }
  }
 
  .table__header__data-cell, .table__data-cell, .price{
    padding-block: 1rem !important;
    padding-inline: 0.5rem !important;
  }

  @media only screen and (min-width: 680px){
   .table__header__data-cell{
      padding-block: 1.5rem !important;
      padding-inline: 2rem 1rem !important;
    }

    .table__data-cell, .price{
      padding-inline: 2rem;
      padding-block: 1rem;
    }

    .text-1 {
      font-size: 1.5rem;
    }
  }

  .table__header__data-cell .text-1> *:first-child{
    margin: 0 !important;
  }

  .table__separation{
    margin-block: 1rem;
  }

  .currency{
    text-decoration: underline;
    margin: 0;
  }

  .round-border-top{
    border-top-left-radius: 1.25rem;
  }

  .last-child-round-border > *:last-child{
    border-bottom-left-radius: 1.25rem;
  }

  .heartbeat-animation{
    outline: 1.5px;
    animation: heartbeat 1.5s 3 ease-in-out;
    border-radius: 50%;
    outline-offset: -1.5px
  }

  @media only screen and (min-width: 680px){
    .animation-only-mobile{
      animation: none;
      outline: none;
    }
  }


  @keyframes heartbeat {
  0% {
    outline: solid;
    outline-color: var(--primary);
  }
  25% {
    outline: solid;
    outline-color: var(--borderColor); 
  }
  75% {
    outline: solid;
    outline-color: var(--primary);
  }
  100% {
    outline: solid;
    outline-color: var(--borderColor);
  }
}

  .price{
    display: grid;
    gap: 1rem;
    min-height: 8rem;
  }

  .price p{
    margin: 0;
  }

  .table__cta, .table__cta:hover{
    color: white;
    background-color: #EE2C70;
    padding-block: 0.5rem;
    padding-inline: 1rem;
    border-radius: 1.5rem;
    width: fit-content;
    transition: all 300ms ease-in-out;
  }

  .table__cta:hover{
    background-color: #EF2C7A;
    transform: scale(0.95)
  }

  .no-border-inline{
    border-inline: none;
  }

  .no-border-right{
    border-right: none;
  }

  .swiper-slide:first-child{
    border-left: solid var(--borderColor) 2px;
  }

  .table__header--special{
    height: calc(14rem + 3px)
  }

  .controls{
    height: 1.5rem;
    display: flex;
    justify-content: space-between;
  }

  .controls button:focus{
    outline: none;
  }

  .price strong{
    font-size: 1.5em;
  }

</style>

<div class="fake-header-row fake-header-row--hide flex table__header-row" data-id="fake-header-row">
  <div class="p-1 table__header-column">
    Elige un tipo de moneda
  </div>
  <div class="table__body-columns swiper" data-id="fake-body-columns">
    <div class="swiper-wrapper">
      <#if productTitle.getSiblings()?has_content>
        <#list productTitle.getSiblings() as cur_productTitle>
          <div class="swiper-slide table-boder--theme">
            <div class="table__header__data-cell table-boder--theme no-border-inline bg--ligth">
                <div class="color--primary text-1">
                  ${cur_productTitle.getData()}
                </div>
              <div class="table__separation" style="background: #DADADA; height: 2px">
              </div>
              <p>Disponible en</p>
              <div class="flex g-1">
                <#if (getterUtil.getBoolean(cur_productTitle.isSolesActive.getData()))>
                  <button class="flex" data-currency="soles" data-column-id="${cur_productTitle.dataId.getData()}">
                    <svg data-column-id="${cur_productTitle.dataId.getData()}" data-currency="soles" width="20" height="20" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                      <path d="M10.0007 17.5836C8.96134 17.5836 7.98075 17.3863 7.05897 16.9915C6.13718 16.5968 5.33036 16.0537 4.63852 15.3622C3.94665 14.6706 3.40327 13.8642 3.00837 12.9428C2.61347 12.0215 2.41602 11.0411 2.41602 10.0017C2.41602 8.94842 2.61338 7.96437 3.0081 7.04953C3.40282 6.13469 3.94595 5.33134 4.63747 4.63949C5.32902 3.94763 6.13547 3.40425 7.05683 3.00935C7.97818 2.61444 8.95854 2.41699 9.99793 2.41699C11.0512 2.41699 12.0353 2.61435 12.9501 3.00908C13.8649 3.4038 14.6683 3.94692 15.3601 4.63845C16.052 5.32999 16.5954 6.13297 16.9903 7.04739C17.3852 7.96179 17.5826 8.94563 17.5826 9.99891C17.5826 11.0383 17.3853 12.0189 16.9906 12.9407C16.5958 13.8625 16.0527 14.6693 15.3612 15.3611C14.6696 16.053 13.8667 16.5964 12.9522 16.9913C12.0378 17.3862 11.054 17.5836 10.0007 17.5836ZM9.99933 16.5003C11.8049 16.5003 13.3396 15.8684 14.6035 14.6045C15.8674 13.3406 16.4993 11.8059 16.4993 10.0003C16.4993 8.19475 15.8674 6.66003 14.6035 5.39614C13.3396 4.13225 11.8049 3.50031 9.99933 3.50031C8.19377 3.50031 6.65905 4.13225 5.39516 5.39614C4.13127 6.66003 3.49933 8.19475 3.49933 10.0003C3.49933 11.8059 4.13127 13.3406 5.39516 14.6045C6.65905 15.8684 8.19377 16.5003 9.99933 16.5003Z" fill="currentColor"/>
                      <path d="M13.4825 6.81361C13.5231 6.69842 13.5909 6.60017 13.6858 6.51885C13.7806 6.43076 13.906 6.38672 14.0618 6.38672C14.1702 6.38672 14.2583 6.39349 14.3261 6.40705C14.3939 6.4206 14.4515 6.43754 14.4989 6.45787L11.7647 13.217H10.8906L13.4825 6.81361Z" fill="currentColor"/>
                      <path d="M9.7099 7.51501C9.57438 7.4066 9.38804 7.30496 9.15088 7.21009C8.91371 7.11523 8.64267 7.06779 8.33775 7.06779C8.10058 7.06779 7.90069 7.09829 7.73806 7.15927C7.58221 7.21348 7.45347 7.28802 7.35183 7.38288C7.25696 7.47097 7.18581 7.57939 7.13838 7.70813C7.09772 7.8301 7.0774 7.95546 7.0774 8.08421C7.0774 8.25361 7.11128 8.39929 7.17904 8.52126C7.2468 8.64323 7.34505 8.75165 7.4738 8.84651C7.60254 8.9346 7.75839 9.01592 7.94135 9.09045C8.1243 9.16499 8.33436 9.23953 8.57152 9.31406C8.80191 9.3886 9.02552 9.48008 9.24235 9.58849C9.45919 9.69014 9.64892 9.81888 9.81154 9.97473C9.97417 10.1306 10.1029 10.3169 10.1978 10.5338C10.2994 10.7506 10.3502 11.0047 10.3502 11.2961C10.3502 11.6349 10.2926 11.933 10.1775 12.1905C10.069 12.448 9.91319 12.6648 9.7099 12.841C9.50662 13.0172 9.26268 13.1493 8.97809 13.2374C8.70027 13.3255 8.39196 13.3695 8.05315 13.3695C7.68047 13.3695 7.3315 13.3289 7.00625 13.2476C6.68777 13.1663 6.43706 13.0578 6.2541 12.9223C6.0847 12.8139 6 12.6885 6 12.5463C6 12.4717 6.03049 12.3769 6.09148 12.2617C6.15246 12.1465 6.22361 12.038 6.30492 11.9364C6.52176 12.1126 6.77925 12.2684 7.0774 12.404C7.38232 12.5327 7.70757 12.5971 8.05315 12.5971C8.31742 12.5971 8.53764 12.5632 8.71382 12.4954C8.89 12.4277 9.02891 12.3396 9.13055 12.2312C9.23897 12.1227 9.31689 12.0008 9.36432 11.8653C9.41176 11.723 9.43547 11.5773 9.43547 11.4282C9.43547 11.2317 9.40498 11.0657 9.34399 10.9302C9.28979 10.7879 9.20509 10.6659 9.08989 10.5642C8.98147 10.4626 8.84256 10.3745 8.67316 10.3C8.50376 10.2187 8.31064 10.1441 8.09381 10.0764C7.84309 10.0018 7.60254 9.92052 7.37216 9.83243C7.14177 9.73757 6.9351 9.61899 6.75214 9.47669C6.57597 9.32762 6.43367 9.14805 6.32525 8.93799C6.21683 8.72793 6.16263 8.46705 6.16263 8.15535C6.16263 7.85043 6.21683 7.58278 6.32525 7.35239C6.44045 7.11523 6.59291 6.91872 6.78264 6.76287C6.97914 6.60702 7.20953 6.48844 7.4738 6.40713C7.73806 6.32581 8.02605 6.28516 8.33775 6.28516C8.58846 6.28516 8.85612 6.31904 9.14071 6.3868C9.43208 6.44778 9.67941 6.53926 9.88269 6.66123C9.99111 6.72899 10.0826 6.80353 10.1571 6.88484C10.2317 6.95938 10.2689 7.04747 10.2689 7.14911C10.2689 7.23042 10.235 7.31851 10.1673 7.41337C10.1063 7.50824 10.0284 7.6031 9.93351 7.69797C9.90641 7.67086 9.87253 7.64376 9.83187 7.61666C9.79799 7.58278 9.75734 7.54889 9.7099 7.51501Z" fill="currentColor"/>
                    </svg>
                    <p class="currency hide-on-680"  data-column-id="${cur_productTitle.dataId.getData()}" data-currency="soles">
                      Soles
                    </p>
                  </button>
                </#if>
                <#if (getterUtil.getBoolean(cur_productTitle.isActiveDolars.getData()))>
                  <button class="flex color--primary" data-currency="dolars" data-column-id="${cur_productTitle.dataId.getData()}">
                    <svg data-column-id="${cur_productTitle.dataId.getData()}" data-currency="dolars" width="21" height="20" viewBox="0 0 21 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                      <path d="M7.8112 12.2631C7.99923 12.7984 8.29891 13.2482 8.71024 13.6125C9.12156 13.9768 9.59057 14.23 10.1173 14.3721V14.8128C10.1173 14.9645 10.1707 15.0903 10.2775 15.1902C10.3844 15.2901 10.5136 15.34 10.6653 15.34C10.8171 15.34 10.9429 15.2866 11.0427 15.1798C11.1426 15.073 11.1926 14.9437 11.1926 14.792V14.3929C11.825 14.3192 12.3755 14.0556 12.844 13.6021C13.3125 13.1485 13.5467 12.6146 13.5467 12.0003C13.5467 11.3753 13.3504 10.8593 12.9578 10.4522C12.5652 10.0452 11.973 9.69583 11.1814 9.40416C10.2914 9.07723 9.72702 8.80079 9.48824 8.57483C9.24946 8.34887 9.13007 8.04625 9.13007 7.66697C9.13007 7.35714 9.2703 7.09325 9.55076 6.87531C9.8312 6.65735 10.1819 6.54837 10.6028 6.54837C10.9811 6.54837 11.324 6.63678 11.6317 6.8136C11.9394 6.99042 12.1579 7.2332 12.2871 7.54195L13.2118 7.14935C13.0238 6.73375 12.7537 6.3924 12.4017 6.12531C12.0497 5.85822 11.6466 5.68568 11.1926 5.60768V5.18781C11.1926 5.0361 11.1426 4.9103 11.0427 4.81041C10.9429 4.71052 10.8171 4.66058 10.6653 4.66058C10.5136 4.66058 10.3878 4.71052 10.2879 4.81041C10.1881 4.9103 10.1381 5.0361 10.1381 5.18781V5.62851C9.49709 5.75137 8.99308 6.00137 8.62609 6.37851C8.25911 6.75565 8.07561 7.19208 8.07561 7.68781C8.07561 8.2861 8.28609 8.79331 8.70703 9.20943C9.12796 9.62557 9.81546 10.0014 10.7695 10.3368C11.4052 10.5644 11.8574 10.8072 12.1261 11.0652C12.3948 11.3232 12.5291 11.6349 12.5291 12.0003C12.5291 12.4255 12.3579 12.7703 12.0155 13.0348C11.6731 13.2992 11.2799 13.4314 10.836 13.4314C10.3643 13.4314 9.94339 13.28 9.5732 12.9771C9.203 12.6742 8.93938 12.2931 8.78232 11.8337L7.8112 12.2631ZM10.6667 17.5836C9.62735 17.5836 8.64677 17.3863 7.72499 16.9915C6.8032 16.5968 5.99638 16.0537 5.30453 15.3622C4.61267 14.6706 4.06929 13.8642 3.67439 12.9428C3.27948 12.0215 3.08203 11.0411 3.08203 10.0017C3.08203 8.94842 3.27939 7.96437 3.67411 7.04953C4.06884 6.13469 4.61196 5.33134 5.30349 4.63949C5.99503 3.94763 6.80148 3.40425 7.72284 3.00935C8.64419 2.61444 9.62456 2.41699 10.6639 2.41699C11.7172 2.41699 12.7013 2.61435 13.6161 3.00908C14.531 3.4038 15.3343 3.94692 16.0262 4.63845C16.718 5.32999 17.2614 6.13297 17.6563 7.04739C18.0512 7.96179 18.2487 8.94563 18.2487 9.99891C18.2487 11.0383 18.0513 12.0189 17.6566 12.9407C17.2619 13.8625 16.7187 14.6693 16.0272 15.3611C15.3357 16.053 14.5327 16.5964 13.6183 16.9913C12.7039 17.3862 11.72 17.5836 10.6667 17.5836ZM10.6653 16.5003C12.4709 16.5003 14.0056 15.8684 15.2695 14.6045C16.5334 13.3406 17.1653 11.8059 17.1653 10.0003C17.1653 8.19475 16.5334 6.66003 15.2695 5.39614C14.0056 4.13225 12.4709 3.50031 10.6653 3.50031C8.85979 3.50031 7.32507 4.13225 6.06118 5.39614C4.79729 6.66003 4.16534 8.19475 4.16534 10.0003C4.16534 11.8059 4.79729 13.3406 6.06118 14.6045C7.32507 15.8684 8.85979 16.5003 10.6653 16.5003Z" fill="currentColor"/>
                    </svg>
                    <p class="currency hide-on-680" data-column-id="${cur_productTitle.dataId.getData()}" data-currency="dolars">
                      Dólares
                    </p>
                  </button>
                </#if>
              </div>
            </div>
          </div>
        </#list>
      </#if>
  
    </div>
  </div>
</div>


<section id="${seccionId.getData()}" class="${seccionClass.getData()}">
  <h2 class="title--primary">${title.getData()}</h2>

  <div class="table flex" data-id="table">
    <div class="table__header-column last-child-round-border">
      <div class="round-border-top table__header-row table__header--special no-border-right table-boder--theme center" data-id="table-header">
        Elige un tipo de moneda
      </div>
      <#if Atributo.getSiblings()?has_content>
        <#list Atributo.getSiblings() as cur_Atributo>
          <div class="table__data-cell table-boder--theme no-border-top no-border-right bg--ligth bolder">
            ${cur_Atributo.getData()}
          </div>
        </#list>
      </#if>
    </div>
    <div class="table__body-columns swiper" data-id="body-columns">
      <div class="controls" data-id="controls">
        <button class="flex g-1" data-action="prev">
          <svg data-action="prev" width="20" height="20" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path d="M8.29954 9.99691L13.7112 15.3343C13.8952 15.5157 13.9893 15.7438 13.9936 16.0185C13.9979 16.2931 13.9037 16.5254 13.7112 16.7152C13.5188 16.9051 13.2854 17 13.0112 17C12.7369 17 12.5036 16.9051 12.3111 16.7152L6.33984 10.826C6.21547 10.7033 6.12775 10.574 6.07666 10.4379C6.02555 10.3018 6 10.1548 6 9.99691C6 9.83898 6.02555 9.69199 6.07666 9.55592C6.12775 9.41984 6.21547 9.29048 6.33984 9.16785L12.3111 3.2786C12.4951 3.09715 12.7263 3.00433 13.0048 3.00014C13.2833 2.99592 13.5188 3.08874 13.7112 3.2786C13.9037 3.46843 14 3.69858 14 3.96905C14 4.23952 13.9037 4.46967 13.7112 4.6595L8.29954 9.99691Z" fill="currentColor"/>
          </svg>
          Anterior
        </button>

        <button class="flex g-1 color--primary" data-action="next">
          Siguiente
          <svg data-action="next" width="20" height="21" viewBox="0 0 20 21" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.7005 10.5031L6.28875 5.16569C6.10478 4.98426 6.01066 4.75621 6.00641 4.48153C6.00214 4.20686 6.09625 3.97462 6.28875 3.78478C6.48123 3.59493 6.71458 3.5 6.98882 3.5C7.26305 3.5 7.49641 3.59493 7.68889 3.78478L13.6602 9.67403C13.7845 9.79666 13.8723 9.92602 13.9233 10.0621C13.9744 10.1982 14 10.3452 14 10.5031C14 10.661 13.9744 10.808 13.9233 10.9441C13.8723 11.0802 13.7845 11.2095 13.6602 11.3322L7.68889 17.2214C7.50493 17.4029 7.2737 17.4957 6.9952 17.4999C6.71671 17.5041 6.48123 17.4113 6.28875 17.2214C6.09625 17.0316 6 16.8014 6 16.531C6 16.2605 6.09625 16.0303 6.28875 15.8405L11.7005 10.5031Z" fill="currentColor"/>
          </svg>
        </button>
      </div>
      <div class="swiper-wrapper" data-id="swiper-table-body"> 
        <#if productTitle.getSiblings()?has_content>
	        <#list productTitle.getSiblings() as cur_productTitle>
            <div class="swiper-slide table-boder--theme no-border-left">
              <div class="table__header__data-cell table__header-row table-boder--theme no-border-inline no-border-top bg--ligth">
                <div class="color--primary text-1">
                  ${cur_productTitle.getData()}
                </div>
                <div class="table__separation" style="background: #DADADA; height: 2px">
                </div>
                <p>Disponible en</p>
                <div class="flex g-1">
                  <#if (getterUtil.getBoolean(cur_productTitle.isSolesActive.getData()))>
                    <button
                      id="${cur_productTitle.solesButtonId.getData()}" 
                      class="flex ${cur_productTitle.solesButtonClass.getData()}" 
                      data-currency="soles" 
                      data-column-id="${cur_productTitle.dataId.getData()}"
                    >
                      <svg class="heartbeat-animation animation-only-mobile" data-column-id="${cur_productTitle.dataId.getData()}" data-currency="soles" width="20" height="20" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0007 17.5836C8.96134 17.5836 7.98075 17.3863 7.05897 16.9915C6.13718 16.5968 5.33036 16.0537 4.63852 15.3622C3.94665 14.6706 3.40327 13.8642 3.00837 12.9428C2.61347 12.0215 2.41602 11.0411 2.41602 10.0017C2.41602 8.94842 2.61338 7.96437 3.0081 7.04953C3.40282 6.13469 3.94595 5.33134 4.63747 4.63949C5.32902 3.94763 6.13547 3.40425 7.05683 3.00935C7.97818 2.61444 8.95854 2.41699 9.99793 2.41699C11.0512 2.41699 12.0353 2.61435 12.9501 3.00908C13.8649 3.4038 14.6683 3.94692 15.3601 4.63845C16.052 5.32999 16.5954 6.13297 16.9903 7.04739C17.3852 7.96179 17.5826 8.94563 17.5826 9.99891C17.5826 11.0383 17.3853 12.0189 16.9906 12.9407C16.5958 13.8625 16.0527 14.6693 15.3612 15.3611C14.6696 16.053 13.8667 16.5964 12.9522 16.9913C12.0378 17.3862 11.054 17.5836 10.0007 17.5836ZM9.99933 16.5003C11.8049 16.5003 13.3396 15.8684 14.6035 14.6045C15.8674 13.3406 16.4993 11.8059 16.4993 10.0003C16.4993 8.19475 15.8674 6.66003 14.6035 5.39614C13.3396 4.13225 11.8049 3.50031 9.99933 3.50031C8.19377 3.50031 6.65905 4.13225 5.39516 5.39614C4.13127 6.66003 3.49933 8.19475 3.49933 10.0003C3.49933 11.8059 4.13127 13.3406 5.39516 14.6045C6.65905 15.8684 8.19377 16.5003 9.99933 16.5003Z" fill="currentColor"/>
                        <path d="M13.4825 6.81361C13.5231 6.69842 13.5909 6.60017 13.6858 6.51885C13.7806 6.43076 13.906 6.38672 14.0618 6.38672C14.1702 6.38672 14.2583 6.39349 14.3261 6.40705C14.3939 6.4206 14.4515 6.43754 14.4989 6.45787L11.7647 13.217H10.8906L13.4825 6.81361Z" fill="currentColor"/>
                        <path d="M9.7099 7.51501C9.57438 7.4066 9.38804 7.30496 9.15088 7.21009C8.91371 7.11523 8.64267 7.06779 8.33775 7.06779C8.10058 7.06779 7.90069 7.09829 7.73806 7.15927C7.58221 7.21348 7.45347 7.28802 7.35183 7.38288C7.25696 7.47097 7.18581 7.57939 7.13838 7.70813C7.09772 7.8301 7.0774 7.95546 7.0774 8.08421C7.0774 8.25361 7.11128 8.39929 7.17904 8.52126C7.2468 8.64323 7.34505 8.75165 7.4738 8.84651C7.60254 8.9346 7.75839 9.01592 7.94135 9.09045C8.1243 9.16499 8.33436 9.23953 8.57152 9.31406C8.80191 9.3886 9.02552 9.48008 9.24235 9.58849C9.45919 9.69014 9.64892 9.81888 9.81154 9.97473C9.97417 10.1306 10.1029 10.3169 10.1978 10.5338C10.2994 10.7506 10.3502 11.0047 10.3502 11.2961C10.3502 11.6349 10.2926 11.933 10.1775 12.1905C10.069 12.448 9.91319 12.6648 9.7099 12.841C9.50662 13.0172 9.26268 13.1493 8.97809 13.2374C8.70027 13.3255 8.39196 13.3695 8.05315 13.3695C7.68047 13.3695 7.3315 13.3289 7.00625 13.2476C6.68777 13.1663 6.43706 13.0578 6.2541 12.9223C6.0847 12.8139 6 12.6885 6 12.5463C6 12.4717 6.03049 12.3769 6.09148 12.2617C6.15246 12.1465 6.22361 12.038 6.30492 11.9364C6.52176 12.1126 6.77925 12.2684 7.0774 12.404C7.38232 12.5327 7.70757 12.5971 8.05315 12.5971C8.31742 12.5971 8.53764 12.5632 8.71382 12.4954C8.89 12.4277 9.02891 12.3396 9.13055 12.2312C9.23897 12.1227 9.31689 12.0008 9.36432 11.8653C9.41176 11.723 9.43547 11.5773 9.43547 11.4282C9.43547 11.2317 9.40498 11.0657 9.34399 10.9302C9.28979 10.7879 9.20509 10.6659 9.08989 10.5642C8.98147 10.4626 8.84256 10.3745 8.67316 10.3C8.50376 10.2187 8.31064 10.1441 8.09381 10.0764C7.84309 10.0018 7.60254 9.92052 7.37216 9.83243C7.14177 9.73757 6.9351 9.61899 6.75214 9.47669C6.57597 9.32762 6.43367 9.14805 6.32525 8.93799C6.21683 8.72793 6.16263 8.46705 6.16263 8.15535C6.16263 7.85043 6.21683 7.58278 6.32525 7.35239C6.44045 7.11523 6.59291 6.91872 6.78264 6.76287C6.97914 6.60702 7.20953 6.48844 7.4738 6.40713C7.73806 6.32581 8.02605 6.28516 8.33775 6.28516C8.58846 6.28516 8.85612 6.31904 9.14071 6.3868C9.43208 6.44778 9.67941 6.53926 9.88269 6.66123C9.99111 6.72899 10.0826 6.80353 10.1571 6.88484C10.2317 6.95938 10.2689 7.04747 10.2689 7.14911C10.2689 7.23042 10.235 7.31851 10.1673 7.41337C10.1063 7.50824 10.0284 7.6031 9.93351 7.69797C9.90641 7.67086 9.87253 7.64376 9.83187 7.61666C9.79799 7.58278 9.75734 7.54889 9.7099 7.51501Z" fill="currentColor"/>
                      </svg>
                      <p class="currency hide-on-680" data-column-id="${cur_productTitle.dataId.getData()}" data-currency="soles">
                        Soles
                      </p>
                    </button>
                  </#if>
                  <#if (getterUtil.getBoolean(cur_productTitle.isActiveDolars.getData()))>
                    <button
                      id="${cur_productTitle.dolarsButtonId.getData()}"
                      class="flex color--primary ${cur_productTitle.dolarsButtonClass.getData()}" 
                      data-currency="dolars" 
                      data-column-id="${cur_productTitle.dataId.getData()}"
                    >
                      <svg class="heartbeat-animation animation-only-mobile" data-currency="dolars" data-column-id="${cur_productTitle.dataId.getData()}" width="21" height="20" viewBox="0 0 21 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.8112 12.2631C7.99923 12.7984 8.29891 13.2482 8.71024 13.6125C9.12156 13.9768 9.59057 14.23 10.1173 14.3721V14.8128C10.1173 14.9645 10.1707 15.0903 10.2775 15.1902C10.3844 15.2901 10.5136 15.34 10.6653 15.34C10.8171 15.34 10.9429 15.2866 11.0427 15.1798C11.1426 15.073 11.1926 14.9437 11.1926 14.792V14.3929C11.825 14.3192 12.3755 14.0556 12.844 13.6021C13.3125 13.1485 13.5467 12.6146 13.5467 12.0003C13.5467 11.3753 13.3504 10.8593 12.9578 10.4522C12.5652 10.0452 11.973 9.69583 11.1814 9.40416C10.2914 9.07723 9.72702 8.80079 9.48824 8.57483C9.24946 8.34887 9.13007 8.04625 9.13007 7.66697C9.13007 7.35714 9.2703 7.09325 9.55076 6.87531C9.8312 6.65735 10.1819 6.54837 10.6028 6.54837C10.9811 6.54837 11.324 6.63678 11.6317 6.8136C11.9394 6.99042 12.1579 7.2332 12.2871 7.54195L13.2118 7.14935C13.0238 6.73375 12.7537 6.3924 12.4017 6.12531C12.0497 5.85822 11.6466 5.68568 11.1926 5.60768V5.18781C11.1926 5.0361 11.1426 4.9103 11.0427 4.81041C10.9429 4.71052 10.8171 4.66058 10.6653 4.66058C10.5136 4.66058 10.3878 4.71052 10.2879 4.81041C10.1881 4.9103 10.1381 5.0361 10.1381 5.18781V5.62851C9.49709 5.75137 8.99308 6.00137 8.62609 6.37851C8.25911 6.75565 8.07561 7.19208 8.07561 7.68781C8.07561 8.2861 8.28609 8.79331 8.70703 9.20943C9.12796 9.62557 9.81546 10.0014 10.7695 10.3368C11.4052 10.5644 11.8574 10.8072 12.1261 11.0652C12.3948 11.3232 12.5291 11.6349 12.5291 12.0003C12.5291 12.4255 12.3579 12.7703 12.0155 13.0348C11.6731 13.2992 11.2799 13.4314 10.836 13.4314C10.3643 13.4314 9.94339 13.28 9.5732 12.9771C9.203 12.6742 8.93938 12.2931 8.78232 11.8337L7.8112 12.2631ZM10.6667 17.5836C9.62735 17.5836 8.64677 17.3863 7.72499 16.9915C6.8032 16.5968 5.99638 16.0537 5.30453 15.3622C4.61267 14.6706 4.06929 13.8642 3.67439 12.9428C3.27948 12.0215 3.08203 11.0411 3.08203 10.0017C3.08203 8.94842 3.27939 7.96437 3.67411 7.04953C4.06884 6.13469 4.61196 5.33134 5.30349 4.63949C5.99503 3.94763 6.80148 3.40425 7.72284 3.00935C8.64419 2.61444 9.62456 2.41699 10.6639 2.41699C11.7172 2.41699 12.7013 2.61435 13.6161 3.00908C14.531 3.4038 15.3343 3.94692 16.0262 4.63845C16.718 5.32999 17.2614 6.13297 17.6563 7.04739C18.0512 7.96179 18.2487 8.94563 18.2487 9.99891C18.2487 11.0383 18.0513 12.0189 17.6566 12.9407C17.2619 13.8625 16.7187 14.6693 16.0272 15.3611C15.3357 16.053 14.5327 16.5964 13.6183 16.9913C12.7039 17.3862 11.72 17.5836 10.6667 17.5836ZM10.6653 16.5003C12.4709 16.5003 14.0056 15.8684 15.2695 14.6045C16.5334 13.3406 17.1653 11.8059 17.1653 10.0003C17.1653 8.19475 16.5334 6.66003 15.2695 5.39614C14.0056 4.13225 12.4709 3.50031 10.6653 3.50031C8.85979 3.50031 7.32507 4.13225 6.06118 5.39614C4.79729 6.66003 4.16534 8.19475 4.16534 10.0003C4.16534 11.8059 4.79729 13.3406 6.06118 14.6045C7.32507 15.8684 8.85979 16.5003 10.6653 16.5003Z" fill="currentColor"/>
                      </svg>
                      <p class="currency hide-on-680" data-column-id="${cur_productTitle.dataId.getData()}" data-currency="dolars">
                        Dólares
                      </p>
                    </button>
                  </#if>
                </div>
              </div>
              <div data-id="${cur_productTitle.dataId.getData()}" data-currency-id="soles">
                <#list cur_productTitle.Valor.getSiblings() as value>
                  <div class="table__data-cell table-boder--theme no-border-inline no-border-top">
                    <#if (value.Icono.getData() == "check")>
                      <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.16 22.671L25.3052 12.5634C25.5033 12.3653 25.7245 12.2701 25.9687 12.2778C26.2129 12.2855 26.4389 12.3932 26.6465 12.6009C26.8542 12.8085 26.9581 13.0321 26.9581 13.2715C26.9581 13.5109 26.8542 13.7345 26.6465 13.9422L16.034 24.5546C15.7879 24.8008 15.5028 24.9239 15.1788 24.9239C14.8548 24.9239 14.5697 24.8008 14.3235 24.5546L10.0485 20.2797C9.85044 20.0816 9.74659 19.8604 9.73696 19.6162C9.72736 19.372 9.8264 19.146 10.0341 18.9384C10.2418 18.7307 10.4653 18.6268 10.7047 18.6268C10.9442 18.6268 11.1677 18.7307 11.3754 18.9384L15.16 22.671Z" fill="#0099CC"/>
                      </svg>
                    <#elseif (value.Icono.getData() == "cross")>
                      <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M17.9997 19.3932L11.5901 25.8028C11.3824 26.0105 11.1589 26.1105 10.9194 26.1028C10.68 26.0951 10.4517 25.9826 10.2344 25.7653C10.0171 25.548 9.90841 25.3158 9.90841 25.0687C9.90841 24.8216 10.0171 24.5894 10.2344 24.3721L16.6065 17.9999L10.1969 11.5903C9.9892 11.3826 9.8892 11.1528 9.8969 10.9009C9.90457 10.649 10.0171 10.4144 10.2344 10.1971C10.4517 9.97976 10.6839 9.87109 10.931 9.87109C11.1781 9.87109 11.4103 9.97976 11.6276 10.1971L17.9997 16.6067L24.4094 10.1971C24.6171 9.98938 24.8469 9.88313 25.0988 9.87833C25.3507 9.87351 25.5853 9.97976 25.8026 10.1971C26.0199 10.4144 26.1286 10.6466 26.1286 10.8937C26.1286 11.1408 26.0199 11.373 25.8026 11.5903L19.393 17.9999L25.8026 24.4096C26.0103 24.6173 26.1165 24.8408 26.1213 25.0802C26.1262 25.3196 26.0199 25.548 25.8026 25.7653C25.5853 25.9826 25.3531 26.0913 25.106 26.0913C24.8589 26.0913 24.6267 25.9826 24.4094 25.7653L17.9997 19.3932Z" fill="#A1A1A1"/>
                      </svg>
                    </#if>
                    <p>
                      <#if (value.text.getData()?has_content)>
                        ${value.text.getData()}
                      <#else>
                        ${value.dolarsText.getData()}
                      </#if>
                    </p>
                  </div>
                </#list>
                <div class="price">
                  <#if (cur_productTitle.priceText.getData()?has_content)>
                     ${cur_productTitle.priceText.getData()!""}
                  <#else>
                    <p></p>
                  </#if>
                  <a 
                    id="${cur_productTitle.ctaId.getData()}" 
                    class="table__cta center ${cur_productTitle.ctaClass.getData()}" 
                    href="${cur_productTitle.URL.getData()}" 
                  >
                   <#if (cur_productTitle.ctaText.getData()?has_content)>
                    ${cur_productTitle.ctaText.getData()}
                   <#else>
                     Cotizar
                   </#if>
                  </a>
                </div>
              </div>
              <div class="hide" data-id="${cur_productTitle.dataId.getData()}" data-currency-id="dolars">
                <#list cur_productTitle.Valor.getSiblings() as value>
                  <div class="table__data-cell table-boder--theme no-border-inline no-border-top">
                    <#if (value.Icono.getData() == "check")>
                      <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.16 22.671L25.3052 12.5634C25.5033 12.3653 25.7245 12.2701 25.9687 12.2778C26.2129 12.2855 26.4389 12.3932 26.6465 12.6009C26.8542 12.8085 26.9581 13.0321 26.9581 13.2715C26.9581 13.5109 26.8542 13.7345 26.6465 13.9422L16.034 24.5546C15.7879 24.8008 15.5028 24.9239 15.1788 24.9239C14.8548 24.9239 14.5697 24.8008 14.3235 24.5546L10.0485 20.2797C9.85044 20.0816 9.74659 19.8604 9.73696 19.6162C9.72736 19.372 9.8264 19.146 10.0341 18.9384C10.2418 18.7307 10.4653 18.6268 10.7047 18.6268C10.9442 18.6268 11.1677 18.7307 11.3754 18.9384L15.16 22.671Z" fill="#0099CC"/>
                      </svg>
                    <#elseif (value.Icono.getData() == "cross")>
                      <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M17.9997 19.3932L11.5901 25.8028C11.3824 26.0105 11.1589 26.1105 10.9194 26.1028C10.68 26.0951 10.4517 25.9826 10.2344 25.7653C10.0171 25.548 9.90841 25.3158 9.90841 25.0687C9.90841 24.8216 10.0171 24.5894 10.2344 24.3721L16.6065 17.9999L10.1969 11.5903C9.9892 11.3826 9.8892 11.1528 9.8969 10.9009C9.90457 10.649 10.0171 10.4144 10.2344 10.1971C10.4517 9.97976 10.6839 9.87109 10.931 9.87109C11.1781 9.87109 11.4103 9.97976 11.6276 10.1971L17.9997 16.6067L24.4094 10.1971C24.6171 9.98938 24.8469 9.88313 25.0988 9.87833C25.3507 9.87351 25.5853 9.97976 25.8026 10.1971C26.0199 10.4144 26.1286 10.6466 26.1286 10.8937C26.1286 11.1408 26.0199 11.373 25.8026 11.5903L19.393 17.9999L25.8026 24.4096C26.0103 24.6173 26.1165 24.8408 26.1213 25.0802C26.1262 25.3196 26.0199 25.548 25.8026 25.7653C25.5853 25.9826 25.3531 26.0913 25.106 26.0913C24.8589 26.0913 24.6267 25.9826 24.4094 25.7653L17.9997 19.3932Z" fill="#A1A1A1"/>
                      </svg>
                    </#if>
                    <p>
                      <#if (value.dolarsText.getData()?has_content)>
                        ${value.dolarsText.getData()}
                      <#else>
                        ${value.text.getData()}
                      </#if>
                    </p>
                  </div>
                </#list>
                <div class="price">
                  <#if (cur_productTitle.priceTextDolars.getData()?has_content)>
                    ${cur_productTitle.priceTextDolars.getData()!""}
                  <#else>
                    <p></p>
                  </#if>
                  <a 
                    id="${cur_productTitle.ctaId.getData()}" 
                    class="table__cta center ${cur_productTitle.ctaClass.getData()}" 
                    href="${cur_productTitle.URL.getData()}" 
                  >
                   <#if (cur_productTitle.ctaText.getData()?has_content)>
                    ${cur_productTitle.ctaText.getData()}
                   <#else>
                     Cotizar
                   </#if>
                  </a>
                </div>
              </div>
            </div>
          </#list>
        </#if>
      </div>
    </div>
  </div>
</section>

<script>
  const q$ = selector => document.body.querySelector(selector);
  const q$$ = selector => [...document.body.querySelectorAll(selector)]

  function lenseViewStatus(element, cb, options) {
    let positionStatus = "exit";

    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting && positionStatus === "exit") {
          positionStatus = "entered";
        } else if (!entry.isIntersecting && positionStatus === "entered")
          positionStatus = "exit";

        if (cb) cb(positionStatus);
      });
    }, options);

    observer.observe(element);
    observer.observe = () => {
      throw new Error("observer already used");
    };

    return [observer, () => positionStatus];
  }
  
  const fakeHeaderRow = q$(
    '[data-id="fake-header-row"]'
  );
  
  lenseViewStatus.off = ()=> []
  
  const table = q$('[data-id="table"]');
  
  const tableHeader = q$('[data-id="table-header"]');
  
  const [tableHeaderObserver, getTableHeaderStatus] = lenseViewStatus.off(
    tableHeader,
    (status) => {
      if (status === "exit")
        return fakeHeaderRow.classList.replace(
          "fake-header-row--hide",
          "fake-header-row--show"
        );
  
      fakeHeaderRow.classList.replace(
        "fake-header-row--show",
        "fake-header-row--hide"
      );
    }
  );
  
  const [tableObserver, getTableStatus] = lenseViewStatus.off(table, (status) => {
    if (status === "exit")
      fakeHeaderRow.classList.replace(
        "fake-header-row--show",
        "fake-header-row--hide"
      );
    else if (getTableHeaderStatus() === "exit")
      fakeHeaderRow.classList.replace(
        "fake-header-row--hide",
        "fake-header-row--show"
      );
  });

  const slidesDefaultConfig = {
    slidesPerView: window.innerWidth >= 680 ? 3 : "auto",
    centeredSlides: false,
    spaceBetween: 0,
    grabCursor: true

  }
  

  const bodySwiper = new Swiper('[data-id="body-columns"]', slidesDefaultConfig);
  
  const fakeHeaderSwiper = new Swiper('[data-id="fake-body-columns"]', slidesDefaultConfig);
  
  function createReactToSlide(time = 150) {
    let aleadyRun = false;

    return function (b) {
      return function () {
        if (aleadyRun) {
          aleadyRun = false;
          return;
        }
        aleadyRun = true;
        b.slideTo(this.activeIndex, time, false);
      };
    };
  }

  const reactToSlide = createReactToSlide();

  bodySwiper.on("slideChange", reactToSlide(fakeHeaderSwiper));
  fakeHeaderSwiper.on("slideChange", reactToSlide(bodySwiper));
  
  const swiperTableBody = q$('[data-id="swiper-table-body"]');

  function handleChangeCurency({target}) {
    const dataCurrency = target.getAttribute("data-currency");

    if (!dataCurrency) return;

    const columnId = target.getAttribute("data-column-id");

    <#noparse>
      const buttons = q$$(`button[data-column-id="${columnId}"]`)

      const columns = q$$(`[data-id=\"${columnId}\"]`);
    </#noparse>
  
    const columnToShow = columns.find(
      (e) => e.getAttribute("data-currency-id") === dataCurrency
    );
    const columnToHide = columns.find(
      (e) => e.getAttribute("data-currency-id") !== dataCurrency
    );

    const buttonToNoHigligth = buttons.filter(
      e => e.getAttribute('data-currency') === dataCurrency
    )

    const buttonToHigligth = buttons.filter(
      e => e.getAttribute('data-currency') !== dataCurrency
    )

    buttonToNoHigligth
      .forEach(button => button.classList.remove("color--primary"));

    buttonToHigligth
      .forEach(button => button.classList.add("color--primary"));
  
    columnToShow.classList.remove("hide");
    columnToHide.classList.add("hide");
  }

  fakeHeaderRow.addEventListener("click", handleChangeCurency);
  swiperTableBody.addEventListener("click", handleChangeCurency);

  const controls = q$('[data-id="controls"]')

  controls.addEventListener('click', function({target}){
    const action = target.getAttribute('data-action');

    if(!action)
      return;
    
    switch(action){
      case 'next': 
        bodySwiper.slideNext();
        break;
      case 'prev':
        bodySwiper.slidePrev();
        break;
    }

    if(bodySwiper.progress){
      this.querySelector('button[data-action="prev"]').classList.add('color--primary');
    }else{
      this.querySelector('button[data-action="prev"]').classList.remove('color--primary')
    }

    if(bodySwiper.progress === 1){
      this.querySelector('button[data-action="next"]').classList.remove('color--primary');
    }else{
      this.querySelector('button[data-action="next"]').classList.add('color--primary')
    }     

  })
  
</script>