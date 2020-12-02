# frozen_string_literal: true

def get_2020_expense(file_path, number_of_expenses)
  expenses = []

  File.open(file_path, 'r').each do |line|
    expenses << line.to_i
  end

  expenses.combination(number_of_expenses).to_a.select{|a| a.sum == 2020 }.flatten.inject(:*)
end

pp get_2020_expense('./input.txt')
