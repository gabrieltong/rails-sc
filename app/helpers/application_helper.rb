# encoding: utf-8
module ApplicationHelper
  def sf(value)
    return '是' if value == true
    return '否' if value == false
    ''
  end
end
