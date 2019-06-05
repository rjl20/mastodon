# coding: utf-8
# frozen_string_literal: true
require 'oulipo/oulipo'

module Oulipo
  class Validators::PollValidator < ActiveModel::Validator

    def validate(poll)
      poll.errors.add(:options, I18n.t('oulipo.invalid_symbol')) if poll.options.any? { |option| option.match?(FIFTH_GLYPH_REGEX) }
    end

  end
end
