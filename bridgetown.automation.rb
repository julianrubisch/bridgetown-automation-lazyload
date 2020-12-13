say_status "LazyLoad", "Adding the vanilla-lazyload yarn package", :green
run "yarn add vanilla-lazyload"

elements_selector = ask "Lazy element selector (default: .lazy)"
threshold = ask "IntersectionObserver threshold (default: 300)"

say_status "LazyLoad", "Writing the LazyLoad config to index.js"
javascript_import do
  <<~JS
    import LazyLoad from 'vanilla-lazyload'

    const lazyLoadInstance = new LazyLoad({
      // check out https://github.com/verlok/vanilla-lazyload for possible settings
      elements_selector: '#{elements_selector.present? ? elements_selector : ".lazy"}',
      threshold: #{threshold.present? ? threshold : "300"}
    })
  JS
end
