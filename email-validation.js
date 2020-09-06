(function () {
  webshim.setOptions('forms', {
      lazyCustomMessages: true,
      iVal: {
          sel: '.ws-validate',
          handleBubble: 'hide', // hide error bubble

          //add bootstrap specific classes
          errorMessageClass: 'help-block',
          successWrapperClass: 'has-success',
          errorWrapperClass: 'has-error',

          //add config to find right wrapper
          fieldWrapper: '.form-group'
      }
  });

  //load forms polyfill + iVal feature
  webshim.polyfill('forms');
})();