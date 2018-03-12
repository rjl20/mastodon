# coding: utf-8
# frozen_string_literal: true
require 'oulipo/oulipo'

module Oulipo
  class Validators::StatusValidator < ActiveModel::Validator

    def validate(status)
      if status.local?
        validate_text(:text, status)
        validate_text(:spoiler_text, status)
      end
    end

    private

    def validate_text(field, status)
      text = status.send(field)
      Oulipo.set_invalid_glyphs!(FIFTH_GLYPH_REGEX)
      if toot_text(text).match?(Oulipo.invalid_glyphs_regex)
        status.errors.add(field, I18n.t('oulipo.invalid_symbol'))
      end
    end

    def toot_text(text)
      [URL_REGEX, MENTION_REGEX, EMOJI_REGEX].each do |regex|
        text = strip_matches(text, regex)
      end
      return text
    end

    def strip_matches(text, regex)
      text.gsub(regex, '')
    end

  end
end
