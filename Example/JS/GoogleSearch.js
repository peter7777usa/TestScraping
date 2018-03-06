var GoogleSearch = (function () {
                    function assertGoogleTitle() {
                    return document.title == "Google";
                    }
                    function performSearch(searchText) {
                    //document.querySelector('input[type="text"], input[type="Search"]').value = searchText;
                    var e = document.getElementById('_SJh').
                    getElementsByTagName('a')[1];
                    e.click();
                    var theText = e.innerHTML;
                    console.log(theText);
                    return theText;
                    }
                    function assertSearchResultTitle() {
                    return document.title == "SwiftScraper iOS - Google Search";
                    }
                    function getSearchResults() {
                    var headings = document.querySelectorAll('h3.r');
                    return Array.prototype.slice.call(headings).map(function (h3) {
                                                                    return { 'text': h3.innerText, 'href': h3.childNodes[0].href };
                                                                    });
                    }
                    function scrollAndCountImages() {
                    var firstCount = document.querySelectorAll('img').length;
                    window.scrollTo(0, document.body.scrollHeight);
                    setTimeout(function () {
                               var secondCount = document.querySelectorAll('img').length;
                               SwiftScraper.postMessage({ 'first': firstCount, 'second': secondCount });
                               }, 2000);
                    }
                    return {
                    assertGoogleTitle: assertGoogleTitle,
                    performSearch: performSearch,
                    assertSearchResultTitle: assertSearchResultTitle,
                    getSearchResults: getSearchResults,
                    scrollAndCountImages: scrollAndCountImages
                    };
                    })()

//<a href="https://www.google.com/webhp?output=search&amp;tbm=isch&amp;tbo=u">Images</a>

