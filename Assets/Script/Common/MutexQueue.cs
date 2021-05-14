using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


class MutexQueue<T>
{
    private static readonly object mutex = new object();
    private Queue<T> queue = new Queue<T>();

    public void Push(T t)
    {
        lock (mutex)
        {
            queue.Enqueue(t);
        }
    }

    public T Pop()
    {
        lock (mutex)
        {
            if (queue.Count <= 0) return default(T);
            return queue.Dequeue();
        }
    }

    public bool Empty()
    {
        lock (mutex)
        {
            return queue.Count <= 0;            
        }
    }

    public void Clear()
    {
        lock (mutex)
        {
            queue.Clear();
        }
    }
}

