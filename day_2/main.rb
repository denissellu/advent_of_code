# frozen_string_literal: true

def valid_passwords(file_path)
  passwords = []

  File.open(file_path, 'r').each do |line|
    passwords << line.strip.split
  end

  passwords.select do |p|
    min, max = p[0].split('-').map(&:to_i)
    check_char = p[1][0]
    password = p[2]

   password.count(check_char).between?(min, max)

  end.count
end

pp valid_passwords('./input.txt')


#####################################
# TASK 2
# ###################################

def index_valid_passwords(file_path)
  passwords = []

  File.open(file_path, 'r').each do |line|
    passwords << line.strip.split
  end

  passwords.select do |p|
    min, max = p[0].split('-').map(&:to_i)
    check_char = p[1][0]
    password = p[2]

    [password[min-1] == check_char, password[max-1] == check_char].count(true) == 1
  end.count
end

pp index_valid_passwords('./input.txt')
