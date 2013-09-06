# encoding: utf-8
module ApplicationHelper
  def sf(value)
    return '是' if value == true
    '否'
  end
end
