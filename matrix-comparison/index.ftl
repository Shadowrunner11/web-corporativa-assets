<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>

<link
  rel="stylesheet"
  href="https://www.unpkg.com/comparison-matrix@1.0.0/styles.css"
/>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://www.unpkg.com/comparison-matrix@1.0.0/index.umd.js"></script>
<style>
  :root{
    --hControls: 2.5rem;
  }

  .swiper{
    margin: 0;
  }

  .table__cell{
    min-height: 3rem;
  }

  .controls{
    -webkit-margin-start: auto;
            margin-inline-start: auto;
    padding-inline: 0.25rem;
    display: none;
    height: var(--hControls);
  }

  .controls button:focus{
    border: none;
    outline: none;
  }

  @media only screen and (min-width: 520px){
    .controls{
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
    }
  }

  .price{
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
  }

  .price__cta{
    height: -webkit-max-content;
    height: -moz-max-content;
    height: max-content;
  }

  .price__cta:hover, .price__cta:visited{
    color: white
  }

  .table__products__cell svg{
    font-size: 1.5rem
  }

  @media only screen and (min-width: 620px){
    .table__products__cell svg{
      font-size: 2rem
    }
  }

  @media only screen and (min-width: 520px){
    .price{
      border-bottom: 1px solid #dadada;
    }

    .table__locked-column{
      -webkit-transform: translateY(calc(var(--hControls) - 1px));
          -ms-transform: translateY(calc(var(--hControls) - 1px));
              transform: translateY(calc(var(--hControls) - 1px));
    }
  }

  .comparison{
    color: #444444;
    text-align: center;
    margin: 0;
    font-size: 1rem;
    font-style: normal;
    font-weight: 400;
    line-height: 20px;
    letter-spacing: 0.2px;
  }
</style>

<section 
  id="${seccionId.getData()}" 
  class="${seccionClass.getData()}"
>
  <h3 class="comparison">Comparador</h3>
  <h2 class="title--primary">
    ${title.getData()}
  </h2>
  <div class="table flex">
    <div class="table__locked-column" data-column="locked">
      <div 
        class="table__cell table__locked-column__header" 
        data-clone="test" 
        data-row="header"
      >
        Elige un tipo de moneda
      </div>
      <#if Atributo.getSiblings()?has_content>
        <#list Atributo.getSiblings() as atribute>
          <div 
            class="table__cell table__locked-column__cell" 
            data-row="${atribute?index}"
          >
            ${atribute.getData()}
          </div>
        </#list>
      </#if>
    </div>
      
    <div 
      class="swiper table__products" 
      data-id="body-columns"
    >
      <div 
        class="flex justify--between controls"
        data-id="controls"
      >
        <button class="flex" data-action="prev" style="gap: 0.5rem;">
          <svg
            data-action="prev" 
            width="20" 
            height="20" 
            viewBox="0 0 20 20" 
            fill="currentColor" 
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              data-action="prev"  
              d="M8.29954 9.99691L13.7112 15.3343C13.8952 15.5157 13.9893 15.7438 13.9936 16.0185C13.9979 16.2931 13.9037 16.5254 13.7112 16.7152C13.5188 16.9051 13.2854 17 13.0112 17C12.7369 17 12.5036 16.9051 12.3111 16.7152L6.33984 10.826C6.21547 10.7033 6.12775 10.574 6.07666 10.4379C6.02555 10.3018 6 10.1548 6 9.99691C6 9.83898 6.02555 9.69199 6.07666 9.55592C6.12775 9.41984 6.21547 9.29048 6.33984 9.16785L12.3111 3.2786C12.4951 3.09715 12.7263 3.00433 13.0048 3.00014C13.2833 2.99592 13.5188 3.08874 13.7112 3.2786C13.9037 3.46843 14 3.69858 14 3.96905C14 4.23952 13.9037 4.46967 13.7112 4.6595L8.29954 9.99691Z" 
              fill="currentColor"
            />
          </svg>
          Anterior
        </button>
        <button
          class="flex" 
          data-action="next"
          style="gap: 0.5rem;"
        >
          Siguiente
          <svg
            data-action="next" 
            width="20" 
            height="21" 
            viewBox="0 0 20 21" 
            fill="currentColor" 
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              data-action="next" 
              d="M11.7005 10.5031L6.28875 5.16569C6.10478 4.98426 6.01066 4.75621 6.00641 4.48153C6.00214 4.20686 6.09625 3.97462 6.28875 3.78478C6.48123 3.59493 6.71458 3.5 6.98882 3.5C7.26305 3.5 7.49641 3.59493 7.68889 3.78478L13.6602 9.67403C13.7845 9.79666 13.8723 9.92602 13.9233 10.0621C13.9744 10.1982 14 10.3452 14 10.5031C14 10.661 13.9744 10.808 13.9233 10.9441C13.8723 11.0802 13.7845 11.2095 13.6602 11.3322L7.68889 17.2214C7.50493 17.4029 7.2737 17.4957 6.9952 17.4999C6.71671 17.5041 6.48123 17.4113 6.28875 17.2214C6.09625 17.0316 6 16.8014 6 16.531C6 16.2605 6.09625 16.0303 6.28875 15.8405L11.7005 10.5031Z" 
              fill="currentColor"
            />
          </svg>
        </button>
      </div>
      <div 
        class="swiper-wrapper" 
        data-id="swiper-table-body"
      > 
        <#if productTitle.getSiblings()?has_content>
          <#list productTitle.getSiblings() as product>
            <#assign isSolesActive=getterUtil.getBoolean(product.isSolesActive.getData()) />
            <#assign isDollarsActive=getterUtil.getBoolean(product.isActiveDolars.getData()) />
            <div 
              class="swiper-slide"
              data-column="${product?index}"
            >
              <#assign productsHeaderClassList = [
                'table__cell',
                'table__products__header',
                'flex',
                'flex--vertical',
                'justify--between'
              ]/>
              <div 
                class="${productsHeaderClassList?join(' ')}"
                data-clone="test" 
                data-row="header"
              >
                <div class="color--primary text-1">
                  ${product.getData()}
                </div>
                <div>
                  <div
                  class="table__products__header__separation"
                  ></div>
                  <p>Disponible en:</p>
                  <div 
                    class="table__products__header__currency-controls"
                  >
                    <#if (isSolesActive)>
                      <button
                        id="${product.solesButtonId.getData()}" 
                        class="flex ${product.solesButtonClass.getData()}}" 
                        data-column="${product?index}" 
                        data-currency="soles"
                      >
                        <svg
                          class="currency-icon currency-icon--vibrate" 
                          data-currency="soles"
                          data-column="${product?index}" 
                          width="24" 
                          height="24" 
                          viewBox="0 0 24 24" 
                          fill="currentColor" 
                          xmlns="http://www.w3.org/2000/svg"
                        >
                          <path
                            data-currency="soles"
                            data-column="${product?index}"  
                            d="M12.002 21.1003C10.7548 21.1003 9.57807 20.8635 8.47194 20.3898C7.36579 19.9162 6.39761 19.2644 5.56739 18.4346C4.73716 17.6047 4.0851 16.637 3.61122 15.5314C3.13733 14.4257 2.90039 13.2493 2.90039 12.002C2.90039 10.7381 3.13722 9.55724 3.61089 8.45944C4.08456 7.36162 4.73631 6.39761 5.56614 5.56739C6.39599 4.73716 7.36373 4.0851 8.46937 3.61122C9.57498 3.13733 10.7514 2.90039 11.9987 2.90039C13.2626 2.90039 14.4435 3.13723 15.5413 3.61089C16.6391 4.08456 17.6031 4.73631 18.4333 5.56614C19.2636 6.39599 19.9156 7.35957 20.3895 8.45687C20.8634 9.55415 21.1003 10.7348 21.1003 11.9987C21.1003 13.246 20.8635 14.4227 20.3898 15.5288C19.9162 16.6349 19.2644 17.6031 18.4346 18.4333C17.6047 19.2636 16.6412 19.9156 15.5439 20.3895C14.4466 20.8634 13.266 21.1003 12.002 21.1003ZM12.0004 19.8004C14.167 19.8004 16.0087 19.042 17.5254 17.5254C19.042 16.0087 19.8004 14.167 19.8004 12.0004C19.8004 9.8337 19.042 7.99203 17.5254 6.47537C16.0087 4.9587 14.167 4.20037 12.0004 4.20037C9.8337 4.20037 7.99203 4.9587 6.47537 6.47537C4.9587 7.99203 4.20037 9.8337 4.20037 12.0004C4.20037 14.167 4.9587 16.0087 6.47537 17.5254C7.99203 19.042 9.8337 19.8004 12.0004 19.8004Z" 
                            fill="currentColor"
                          />
                          <path 
                            data-currency="soles"
                            data-column="${product?index}" 
                            d="M16.1786 8.17633C16.2274 8.0381 16.3087 7.9202 16.4225 7.82262C16.5364 7.71692 16.6868 7.66406 16.8738 7.66406C17.0039 7.66406 17.1096 7.67219 17.1909 7.68846C17.2722 7.70472 17.3414 7.72505 17.3983 7.74944L14.1173 15.8604H13.0684L16.1786 8.17633Z" 
                            fill="currentColor"
                          />
                          <path 
                            data-currency="soles"
                            data-column="${product?index}" 
                            d="M11.6511 9.01782C11.4885 8.88772 11.2649 8.76575 10.9803 8.65191C10.6957 8.53808 10.3704 8.48116 10.0045 8.48116C9.71992 8.48116 9.48005 8.51775 9.2849 8.59093C9.09788 8.65598 8.94338 8.74542 8.82141 8.85926C8.70757 8.96497 8.6222 9.09507 8.56528 9.24956C8.51649 9.39593 8.49209 9.54636 8.49209 9.70085C8.49209 9.90413 8.53275 10.079 8.61406 10.2253C8.69538 10.3717 8.81328 10.5018 8.96778 10.6156C9.12227 10.7213 9.30929 10.8189 9.52883 10.9083C9.74838 10.9978 10.0004 11.0872 10.285 11.1767C10.5615 11.2661 10.8298 11.3759 11.09 11.506C11.3502 11.628 11.5779 11.7825 11.7731 11.9695C11.9682 12.1565 12.1227 12.3801 12.2366 12.6403C12.3585 12.9005 12.4195 13.2054 12.4195 13.5551C12.4195 13.9616 12.3504 14.3194 12.2122 14.6284C12.0821 14.9374 11.895 15.1976 11.6511 15.409C11.4072 15.6204 11.1144 15.779 10.7729 15.8847C10.4395 15.9904 10.0696 16.0433 9.663 16.0433C9.21578 16.0433 8.79702 15.9945 8.40672 15.8969C8.02455 15.7993 7.72369 15.6692 7.50414 15.5066C7.30086 15.3765 7.19922 15.2261 7.19922 15.0553C7.19922 14.9659 7.23581 14.852 7.30899 14.7138C7.38217 14.5756 7.46755 14.4455 7.56513 14.3235C7.82533 14.5349 8.13432 14.7219 8.49209 14.8846C8.858 15.039 9.24831 15.1163 9.663 15.1163C9.98012 15.1163 10.2444 15.0756 10.4558 14.9943C10.6672 14.913 10.8339 14.8073 10.9559 14.6772C11.086 14.5471 11.1795 14.4007 11.2364 14.2381C11.2933 14.0674 11.3218 13.8925 11.3218 13.7136C11.3218 13.4778 11.2852 13.2786 11.212 13.116C11.147 12.9452 11.0453 12.7989 10.9071 12.6769C10.777 12.5549 10.6103 12.4492 10.407 12.3598C10.2037 12.2622 9.97199 12.1728 9.71179 12.0915C9.41093 12.002 9.12227 11.9044 8.84581 11.7987C8.56934 11.6849 8.32134 11.5426 8.10179 11.3718C7.89038 11.1929 7.71962 10.9775 7.58952 10.7254C7.45942 10.4733 7.39437 10.1603 7.39437 9.78623C7.39437 9.42032 7.45942 9.09913 7.58952 8.82267C7.72775 8.53808 7.91071 8.30227 8.13838 8.11525C8.37419 7.92823 8.65065 7.78593 8.96778 7.68836C9.2849 7.59078 9.63048 7.54199 10.0045 7.54199C10.3054 7.54199 10.6266 7.58265 10.9681 7.66396C11.3177 7.73714 11.6145 7.84692 11.8585 7.99328C11.9886 8.07459 12.0983 8.16404 12.1878 8.26161C12.2772 8.35106 12.3219 8.45676 12.3219 8.57873C12.3219 8.67631 12.2813 8.78201 12.2 8.89585C12.1268 9.00969 12.0333 9.12353 11.9194 9.23737C11.8869 9.20484 11.8463 9.17232 11.7975 9.13979C11.7568 9.09913 11.708 9.05848 11.6511 9.01782Z" 
                            fill="currentColor"
                          />
                        </svg>
                        <p 
                          class="currency hide-on-680" 
                          data-column="${product?index}" 
                          data-currency="soles"
                        >
                          Soles
                        </p>
                      </button>
                    </#if>
                    <#if (isDollarsActive)>
                      <button
                        id="${product.dolarsButtonId.getData()}"
                        class="flex ${isSolesActive?string('color--primary', '')} ${product.dolarsButtonClass.getData()}" 
                        data-currency="dollars" 
                        data-column="${product?index}" 
                      >
                        <svg 
                          class="currency-icon currency-icon--vibrate"
                          data-currency="dollars"
                          data-column="${product?index}" 
                          width="24" 
                          height="24" 
                          viewBox="0 0 24 24" 
                          fill="currentColor" 
                          xmlns="http://www.w3.org/2000/svg"
                        >
                          <path 
                            data-currency="dollars"
                            data-column="${product?index}" 
                            d="M8.57539 14.7158C8.80102 15.3581 9.16064 15.8978 9.65424 16.335C10.1478 16.7722 10.7106 17.076 11.3427 17.2465V17.7754C11.3427 17.9574 11.4068 18.1084 11.535 18.2282C11.6632 18.3481 11.8183 18.408 12.0004 18.408C12.1824 18.408 12.3334 18.3439 12.4532 18.2157C12.5731 18.0875 12.633 17.9324 12.633 17.7504V17.2715C13.392 17.1831 14.0526 16.8667 14.6148 16.3225C15.1769 15.7783 15.458 15.1376 15.458 14.4004C15.458 13.6504 15.2225 13.0311 14.7513 12.5427C14.2802 12.0542 13.5696 11.635 12.6196 11.285C11.5516 10.8927 10.8744 10.5609 10.5878 10.2898C10.3013 10.0186 10.158 9.6555 10.158 9.20037C10.158 8.82857 10.3263 8.5119 10.6629 8.25037C10.9994 7.98882 11.4202 7.85804 11.9254 7.85804C12.3792 7.85804 12.7908 7.96413 13.16 8.17632C13.5292 8.3885 13.7914 8.67984 13.9465 9.05034L15.0561 8.57922C14.8305 8.0805 14.5064 7.67088 14.084 7.35037C13.6616 7.02987 13.1779 6.82282 12.633 6.72922V6.22537C12.633 6.04332 12.5731 5.89236 12.4532 5.77249C12.3334 5.65262 12.1824 5.59269 12.0004 5.59269C11.8183 5.59269 11.6674 5.65262 11.5475 5.77249C11.4276 5.89236 11.3677 6.04332 11.3677 6.22537V6.75422C10.5985 6.90165 9.99365 7.20165 9.55327 7.65422C9.11288 8.10678 8.89269 8.6305 8.89269 9.22537C8.89269 9.94332 9.14526 10.552 9.65039 11.0513C10.1555 11.5507 10.9805 12.0016 12.1254 12.4042C12.8882 12.6773 13.4308 12.9686 13.7533 13.2782C14.0757 13.5879 14.2369 13.9619 14.2369 14.4004C14.2369 14.9106 14.0315 15.3244 13.6206 15.6417C13.2097 15.959 12.7379 16.1177 12.2052 16.1177C11.6391 16.1177 11.134 15.936 10.6898 15.5725C10.2456 15.209 9.92921 14.7517 9.74074 14.2004L8.57539 14.7158ZM12.002 21.1003C10.7548 21.1003 9.57807 20.8635 8.47194 20.3898C7.36579 19.9162 6.39761 19.2644 5.56739 18.4346C4.73716 17.6047 4.0851 16.637 3.61122 15.5314C3.13733 14.4257 2.90039 13.2493 2.90039 12.002C2.90039 10.7381 3.13722 9.55724 3.61089 8.45944C4.08456 7.36162 4.73631 6.39761 5.56614 5.56739C6.39599 4.73716 7.36373 4.0851 8.46937 3.61122C9.57498 3.13733 10.7514 2.90039 11.9987 2.90039C13.2626 2.90039 14.4435 3.13723 15.5413 3.61089C16.6391 4.08456 17.6031 4.73631 18.4333 5.56614C19.2636 6.39599 19.9156 7.35957 20.3895 8.45687C20.8634 9.55415 21.1003 10.7348 21.1003 11.9987C21.1003 13.246 20.8635 14.4227 20.3898 15.5288C19.9162 16.6349 19.2644 17.6031 18.4346 18.4333C17.6047 19.2636 16.6412 19.9156 15.5439 20.3895C14.4466 20.8634 13.266 21.1003 12.002 21.1003ZM12.0004 19.8004C14.167 19.8004 16.0087 19.042 17.5254 17.5254C19.042 16.0087 19.8004 14.167 19.8004 12.0004C19.8004 9.8337 19.042 7.99203 17.5254 6.47537C16.0087 4.9587 14.167 4.20037 12.0004 4.20037C9.8337 4.20037 7.99203 4.9587 6.47537 6.47537C4.9587 7.99203 4.20037 9.8337 4.20037 12.0004C4.20037 14.167 4.9587 16.0087 6.47537 17.5254C7.99203 19.042 9.8337 19.8004 12.0004 19.8004Z" 
                            fill="currentColor"
                          />
                        </svg>
                        <p 
                          class="currency hide-on-680" 
                          data-column="${product?index}"  
                          data-currency="dollars"
                        >
                          Dólares
                        </p>
                      </button>
                    </#if>
                  </div>
                </div> 
              </div>
      
              <div 
                class="${isSolesActive?string('', 'hidden')}"  
                data-currency-id="soles"
              >
                <#list product.Valor.getSiblings() as value>
                  <div 
                    class="table__cell table__products__cell" 
                    data-row="${value?index}"
                  >
                    <#if (value.Icono.getData() == "check")>
                      <svg width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.106 15.1147L16.8695 8.37623C17.0016 8.24418 17.149 8.18072 17.3118 8.18583C17.4746 8.19097 17.6253 8.26277 17.7637 8.40123C17.9022 8.53968 17.9714 8.68872 17.9714 8.84833C17.9714 9.00793 17.9022 9.15697 17.7637 9.29543L10.6887 16.3704C10.5246 16.5345 10.3346 16.6166 10.1185 16.6166C9.90252 16.6166 9.71246 16.5345 9.54836 16.3704L6.69836 13.5204C6.56631 13.3884 6.49708 13.241 6.49066 13.0781C6.48426 12.9153 6.55028 12.7647 6.68873 12.6262C6.8272 12.4878 6.97623 12.4185 7.13583 12.4185C7.29545 12.4185 7.44448 12.4878 7.58293 12.6262L10.106 15.1147Z" fill="#0099CC"/>
                      </svg>
                    </#if>
                    <#if (value.Icono.getData() == "cross")>
                      <svg width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11.9998 12.9291L7.72673 17.2022C7.58828 17.3406 7.43925 17.4073 7.27963 17.4022C7.12003 17.3971 6.9678 17.3221 6.82293 17.1772C6.67805 17.0323 6.60561 16.8775 6.60561 16.7128C6.60561 16.548 6.67805 16.3932 6.82293 16.2484L11.071 12.0003L6.79793 7.72718C6.65946 7.58873 6.5928 7.43553 6.59793 7.26758C6.60305 7.09965 6.67805 6.94325 6.82293 6.79838C6.9678 6.6535 7.1226 6.58105 7.28733 6.58105C7.45206 6.58105 7.60686 6.6535 7.75173 6.79838L11.9998 11.0715L16.2729 6.79838C16.4114 6.65991 16.5646 6.58908 16.7325 6.58588C16.9005 6.58266 17.0569 6.6535 17.2017 6.79838C17.3466 6.94325 17.4191 7.09805 17.4191 7.26278C17.4191 7.42751 17.3466 7.58231 17.2017 7.72718L12.9287 12.0003L17.2017 16.2734C17.3402 16.4118 17.411 16.5609 17.4142 16.7205C17.4174 16.8801 17.3466 17.0323 17.2017 17.1772C17.0569 17.3221 16.9021 17.3945 16.7373 17.3945C16.5726 17.3945 16.4178 17.3221 16.2729 17.1772L11.9998 12.9291Z" fill="#A1A1A1"/>
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
                <div class="price table__cell" data-row="price">
                  <#if (product.priceText.getData()?has_content)>
                    ${product.priceText.getData()}
                  <#else>
                    <p></p>
                  </#if>
                  <a 
                    id="${product.ctaId.getData()}" 
                    class="price__cta ${product.ctaClass.getData()}" 
                    href="${product.URL.getData()}" 
                  >
                    <#if (product.ctaText.getData()?has_content)>
                      ${product.ctaText.getData()}
                    <#else>
                      Cotizar
                    </#if>
                  </a>
                </div>
              </div>
            
              <div 
                class="${isSolesActive?string('hidden', '')}"
                data-currency-id="dollars"
              >
                <#list product.Valor.getSiblings() as value>
                  <div
                    class="table__cell table__products__cell" 
                    data-row="${value?index}" 
                  >
                    <#if (value.Icono.getData() == "check")>
                      <svg width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.106 15.1147L16.8695 8.37623C17.0016 8.24418 17.149 8.18072 17.3118 8.18583C17.4746 8.19097 17.6253 8.26277 17.7637 8.40123C17.9022 8.53968 17.9714 8.68872 17.9714 8.84833C17.9714 9.00793 17.9022 9.15697 17.7637 9.29543L10.6887 16.3704C10.5246 16.5345 10.3346 16.6166 10.1185 16.6166C9.90252 16.6166 9.71246 16.5345 9.54836 16.3704L6.69836 13.5204C6.56631 13.3884 6.49708 13.241 6.49066 13.0781C6.48426 12.9153 6.55028 12.7647 6.68873 12.6262C6.8272 12.4878 6.97623 12.4185 7.13583 12.4185C7.29545 12.4185 7.44448 12.4878 7.58293 12.6262L10.106 15.1147Z" fill="#0099CC"/>
                      </svg>
                    <#elseif (value.Icono.getData() == "cross")>
                      <svg width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11.9998 12.9291L7.72673 17.2022C7.58828 17.3406 7.43925 17.4073 7.27963 17.4022C7.12003 17.3971 6.9678 17.3221 6.82293 17.1772C6.67805 17.0323 6.60561 16.8775 6.60561 16.7128C6.60561 16.548 6.67805 16.3932 6.82293 16.2484L11.071 12.0003L6.79793 7.72718C6.65946 7.58873 6.5928 7.43553 6.59793 7.26758C6.60305 7.09965 6.67805 6.94325 6.82293 6.79838C6.9678 6.6535 7.1226 6.58105 7.28733 6.58105C7.45206 6.58105 7.60686 6.6535 7.75173 6.79838L11.9998 11.0715L16.2729 6.79838C16.4114 6.65991 16.5646 6.58908 16.7325 6.58588C16.9005 6.58266 17.0569 6.6535 17.2017 6.79838C17.3466 6.94325 17.4191 7.09805 17.4191 7.26278C17.4191 7.42751 17.3466 7.58231 17.2017 7.72718L12.9287 12.0003L17.2017 16.2734C17.3402 16.4118 17.411 16.5609 17.4142 16.7205C17.4174 16.8801 17.3466 17.0323 17.2017 17.1772C17.0569 17.3221 16.9021 17.3945 16.7373 17.3945C16.5726 17.3945 16.4178 17.3221 16.2729 17.1772L11.9998 12.9291Z" fill="#A1A1A1"/>
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
                <div class="price table__cell" data-row="price">
                  <#if (product.priceTextDolars.getData()?has_content)>
                    ${product.priceTextDolars.getData()!""}
                  <#else>
                    <p></p>
                  </#if>
                  <a 
                    id="${product.ctaId.getData()}" 
                    class="price__cta ${product.ctaClass.getData()}" 
                    href="${product.URL.getData()}" 
                  >
                  <#if (product.ctaText.getData()?has_content)>
                    ${product.ctaText.getData()}
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
  <#noparse>
  (()=>{
     const { $, $$, cloneHeader, handleClickCurrency, lenseIntersectionObserver, $OrThrow, IntersectionStatus } = comparisonMatrix;
     function getComputedHeight(element){
      return Number(getComputedStyle(element).height.replace('px', ''))
     }

function resizeByRow(dataRow, isClean = false,  node){
  const rowElements = $$(`section [data-row="${dataRow}"]`, node)
 
  //TODO: Evaluate if should be piping map beacuse reduce is not pure
  let prevMaxHeight = rowElements
    .reduce((maxHeight, element) => {
      const newHeight = getComputedHeight(element)

      return newHeight > maxHeight? newHeight: maxHeight
    }, 0)

  const interval = setInterval(()=>{
    const maxHeight = rowElements
    .reduce((maxHeight, element) => {
      const newHeight = getComputedHeight(element)

      return newHeight > maxHeight? newHeight: maxHeight
    }, 0)
  
    if(prevMaxHeight === maxHeight){
      rowElements.forEach(element => {
        const height = getComputedHeight(element);
        const isHeader = element.getAttribute('data-row') === 'header';
      
        if(!isClean || Number.isNaN(height) ||  height < maxHeight)
          element.style.height = `${maxHeight + (isHeader? 0 : 32)}px`
      });

      return clearInterval(interval)
    }

    prevMaxHeight = maxHeight
  }, 100)

  
}


function resizeAllRows(dataColumn = 'locked', isClean = false, node){
  const dataRows = $$(`section [data-column="${dataColumn}"] [data-row]`, node)
    .map(element => element.getAttribute('data-row'))


  dataRows.forEach(dataRow => resizeByRow(dataRow ?? '', isClean, node));
}
  const getSlidesPerView = () => {
      const width = Number(getComputedStyle(document.body).width.replace('px', ''));
      if (width >= 880)
          return 3;
      if (width >= 680)
          return 2;
      return "auto";
  };
  const slidesDefaultConfig = () => ({
      slidesPerView: getSlidesPerView(),
      centeredSlides: false,
      spaceBetween: 0,
      grabCursor: true,
  });
  const createBodySwiper = () => new Swiper('[data-id="body-columns"]', Object.assign({}, slidesDefaultConfig()));
  let bodySwiper = createBodySwiper();
  cloneHeader("test");
  const createHeaderSwiper = () => new Swiper('[data-id="swiper-fixed-header"]', Object.assign({}, slidesDefaultConfig()));
  // TODO: should encapsulate this , maybe a lense
  let staticHeaderSwiper = createHeaderSwiper();

  bodySwiper.controller.control = staticHeaderSwiper
  staticHeaderSwiper.controller.control = bodySwiper
  function recreateTable() {
      bodySwiper.destroy();
      staticHeaderSwiper.destroy();
      staticHeaderSwiper = createHeaderSwiper();
      bodySwiper = createBodySwiper();
      // cleanAllResizedRows();
      resizeAllRows();

      bodySwiper.controller.control = staticHeaderSwiper
      staticHeaderSwiper.controller.control = bodySwiper
  }
  matchMedia("(min-width: 600px)").addEventListener('change', recreateTable);
  resizeAllRows();
  //const swiperTableBody = $OrThrow('[data-id="swiper-table-body"]');
  document.body.addEventListener("click", handleClickCurrency);
  const rowHeader = $OrThrow('[data-row="header"]');
  const fixedHeader = document.querySelector('[data-id="fixed-header"]');
  const fixedColumn = $OrThrow('[data-column="locked"]');
  const [getStatusFixedColumn] = lenseIntersectionObserver.off(fixedColumn, (status) => {
      if (status === IntersectionStatus.notEntered)
          return;
      if (status !== IntersectionStatus.entered)
          return fixedHeader === null || fixedHeader === void 0 ? void 0 : fixedHeader.classList.add('static-header--hidden');
      if (getStatus().status !== IntersectionStatus.entered)
          fixedHeader === null || fixedHeader === void 0 ? void 0 : fixedHeader.classList.remove('static-header--hidden');
  });
  const [getStatus] = lenseIntersectionObserver.off(rowHeader, (status) => {
      if (status === IntersectionStatus.notEntered)
          return;
      if (status !== IntersectionStatus.entered && getStatusFixedColumn().status === IntersectionStatus.entered) {
          return fixedHeader === null || fixedHeader === void 0 ? void 0 : fixedHeader.classList.remove('static-header--hidden');
      }
      fixedHeader === null || fixedHeader === void 0 ? void 0 : fixedHeader.classList.add('static-header--hidden');
  });

  const controls = $OrThrow('.controls')

  const getWidthBodyColumns = ()=>getComputedStyle($OrThrow('[data-id="body-columns"]')).width

  const changeControls = (node)=>{
    const buttons = $$('button[data-action]', node)
    const prevButtons = buttons.filter(element => element.getAttribute('data-action')==='prev');
    const nextButtons = buttons.filter(element => element.getAttribute('data-action')==='next')

    if(bodySwiper.slides.length <= getSlidesPerView())
      return
    if(bodySwiper.isEnd){
      nextButtons.forEach(button =>button.classList.remove('color--primary'))
    }else{
      nextButtons.forEach(button =>button.classList.add('color--primary'))
    }

    if(bodySwiper.isBeginning){
      prevButtons.forEach(button =>button.classList.remove('color--primary'))
    }else{
      prevButtons.forEach(button =>button.classList.add('color--primary'))
    }
  }

  changeControls(document.body);

  controls.addEventListener('click', function({target}){
    if(!(target instanceof HTMLElement))
      return 

    const action = target.getAttribute('data-action');

    if(!action)
      return

    switch(action){
      case "next":{
        bodySwiper.slideNext()
        break;
      }
      case "prev":{
        bodySwiper.slidePrev();
        break;
      }
      default:
        throw new Error('not supported action')
    }

    changeControls(this)

  })


  resizeByRow("price")

  bodySwiper.on('slideChange', ()=>{
    changeControls(document.body)
  })

  </#noparse>
  })()
 
</script>