var ChaseScraping = ( function () {
                     function performSignin() {
                     var e = document.getElementsByClassName('chaseanalytics-track-link  signInBtn');
                     e[1].click();
                     var theText = e[1].innerHTML;
                     return theText;
                     }
//                     function performSearch(searchText) {
//                     //document.querySelector('input[type="text"], input[type="Search"]').value = searchText;
//
//
//                     var e = document.getElementById('_SJh').
//                     getElementsByTagName('a')[1];
//                     e.click();
//                     var theText = e.innerHTML;
//                     console.log(theText);
//                     return theText;
//                     }
                     return {
                     performSignin: performSignin
                     };
                     })()
//<a class="btn btn--primary chaseanalytics-track-link signInBtn" href="https://secure05c.chase.com/web/auth/dashboard" data-pt-name="hd_signin">Sign in</a>
//<a class="btn btn--primary chaseanalytics-track-link signInBtn" href="https://secure05b.chase.com/web/auth/dashboard" data-pt-name="hd_signin">Sign in</a>
//<a href="https://secure05b.chase.com/web/auth/dashboard" class=" chaseanalytics-track-link  signInBtn" data-pt-name="sm_signinclassic">
//<p class="sidemenu__menu__section--primary--link__title">Sign in</p>
//</a>

