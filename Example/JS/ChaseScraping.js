var ChaseScraping = ( function () {
                     function goToSignin() {
                     var e = document.getElementsByClassName('chaseanalytics-track-link  signInBtn');
                     e[1].click();
                     var theText = e[1].innerHTML;
                     return theText;
                     }
                    
                     return {
                     goToSignin: goToSignin
                     
                     };
                     })()


