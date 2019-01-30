# create a function that prints a pyramid

# step 1: create a stair case

    #
   # 
  #
 #
#

# this way we break down the problem into pieces

def staircase n
    i = 1
    until i > n
        n.downto(i + 1) { print ' '}
        print "#\n"
        i += 1
    end
    print "\n"
end

puts "Enter height: "
h = gets.chomp.to_i
puts "Staircase: "
staircase(h)

# step 2: create a half pyramid 

    #
   ##
  ###
 ####
#####

def halfpyramid n
    i = 1
    until i > n
        n.downto(i + 1) { print ' '}       
        i.times { print '#' }
        print "\n"
        i += 1
    end
    print "\n"
end

puts "Half-pyramid: "
halfpyramid(h)

# step 3: Backwards Half-pyramid

#
##
###
####
#####

def backwards_half_pyr n
    i = 1
    until i > n
        i.times {
            print '#'
        }
        print "\n"
        i += 1
    end
    print "\n"
end

puts "Backwards Half-pyramid: "
backwards_half_pyr(h)

# step 4: create a whole pyramid 

    #
   ###
  #####
 #######
#########

## needs to be changed to create pyramid
def pyramid n
    i = 0
    j = n - 1

    while i < n
        j.times { print ' '}
        (i*2 + 1).times { print '#'}
        print "\n"
        i += 1
        j -= 1
    end
end

puts "Full-pyramid: "
pyramid(h)
