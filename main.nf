#!/usr/bin/env nextflow

cheers = Channel.from 'Hello1', 'Hello2', 'Hello3', 'Hello4'

process sayHello {
  echo true
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}

