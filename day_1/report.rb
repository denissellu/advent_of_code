# frozen_string_literal: true

def get_2020_expense(file_path)
  expenses = []

  File.open(file_path, 'r').each do |line|
    expenses << line.to_i
  end

  expenses.select { |e| expenses.include?(2020 - e) }.inject(:*)
end

pp get_2020_expense('./input.txt')
