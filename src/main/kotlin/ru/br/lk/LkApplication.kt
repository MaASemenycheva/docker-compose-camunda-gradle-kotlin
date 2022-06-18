package ru.br.lk

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class LkApplication

fun main(args: Array<String>) {
	runApplication<LkApplication>(*args)
}
