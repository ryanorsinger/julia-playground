# a() is some operation
a() = sum(i for i in 1:100000)

# b is the Task of 
b = Task(a)

# shows the current task
current_task()

# Query if the specified is done
println("Is the task done yet?:", istaskdone(b))

schedule(b)

yield()

result = istaskdone(b)
println("Is the task done?:", result)