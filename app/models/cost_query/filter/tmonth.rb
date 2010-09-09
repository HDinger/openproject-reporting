class CostQuery::Filter::Tmonth < CostQuery::Filter::Base
  use :integer_operators
  label :label_month

  def self.available_values(user)
    1.upto(12).map {|i| [ ::I18n.t('date.month_names')[i], i ]}
  end
end