require 'bibtex'

module Jekyll
  module BibtexLookup
    def bibtex_for(key, file = 'papers')
      return '' if key.nil? || key.to_s.strip.empty?

      site = @context.registers[:site]
      path = File.join(site.source, '_bibliography', "#{file}.bib")
      return '' unless File.exist?(path)

      cache = (site.data['__bibtex_cache'] ||= {})
      bibliography = (cache[path] ||= BibTeX.parse(File.read(path)))
      entry = bibliography[key]

      entry ? entry.to_s : ''
    end
  end
end

Liquid::Template.register_filter(Jekyll::BibtexLookup)
