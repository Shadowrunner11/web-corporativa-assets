<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<section 
  id="${seccionId.getData()}" 
  class="${seccionClass.getData()}"
>
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
      class="flex g-1 swiper table__products" 
      data-id="body-columns"
    >
      <div 
        class="swiper-wrapper" 
        data-id="swiper-table-body"
      > 
        <#if productTitle.getSiblings()?has_content>
	        <#list productTitle.getSiblings() as product>
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
                    <#if (getterUtil.getBoolean(product.isSolesActive.getData()))>
                      <button
                        id="${product.solesButtonId.getData()}" 
                        class="flex ${product.solesButtonClass.getData()}" 
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
                    <#assign isSolesActive=getterUtil.getBoolean(product.isActiveDolars.getData()) />
                    <#if (isSolesActive)>
                      <button
                        id="${product.dolarsButtonId.getData()}"
                        class="flex ${isSolesActive?string('color--primary', '') ${product.dolarsButtonClass.getData()}" 
                        data-currency="dolars" 
                        data-column-id="${product.dataId.getData()}"
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
                          data-currency="dolars"
                        >
                          Dólares
                        </p>
                      </button>
                    </#if>
                  </div>
                </div> 
              </div>
      
              <div data-id="${product.dataId.getData()}" data-currency-id="soles">
                <#list product.Valor.getSiblings() as value>
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
                  <#if (product.priceText.getData()?has_content)>
                     ${product.priceText.getData()!""}
                  <#else>
                    <p></p>
                  </#if>
                  <a 
                    id="${product.ctaId.getData()}" 
                    class="table__cta center ${product.ctaClass.getData()}" 
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
              <div class="hide" data-id="${product.dataId.getData()}" data-currency-id="dolars">
                <#list product.Valor.getSiblings() as value>
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
                  <#if (product.priceTextDolars.getData()?has_content)>
                    ${product.priceTextDolars.getData()!""}
                  <#else>
                    <p></p>
                  </#if>
                  <a 
                    id="${product.ctaId.getData()}" 
                    class="table__cta center ${product.ctaClass.getData()}" 
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

  const getSlidesPerView = ()=>{
    if(window.innerWidth>=880)
      return 3;
    if(window.innerWidth >= 680)
      return 2;

    return 'auto';
  }

  const slidesDefaultConfig = {
    slidesPerView: getSlidesPerView(),
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