run "yarn add vanilla-lazyload"

javascript_import do
  <<~JS
    import LazyLoad from 'vanilla-lazyload'

    const lazyLoadInstance = new LazyLoad({
      // check out https://github.com/verlok/vanilla-lazyload for possible settings
    })
  JS
end
