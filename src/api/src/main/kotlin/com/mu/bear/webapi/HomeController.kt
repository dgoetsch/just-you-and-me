package com.mu.bear.webapi

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


data class Home(val type: String, val location: String)

@RestController
@RequestMapping("/home")
class HomeController {

    @GetMapping("/{name}")
    fun home(@PathVariable name: String): Home {
        return Home(name, "here")
    }
}