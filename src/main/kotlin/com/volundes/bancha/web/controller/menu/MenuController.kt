package com.volundes.bancha.web.controller.menu

import com.volundes.bancha.domain.provider.SubtitleProvider
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.RequestMapping

@Controller
@RequestMapping("/")
class MenuController(
        private val subtitleProvider: SubtitleProvider
) {

    @ModelAttribute("subtitle")
    fun subtitle(): String{
        return subtitleProvider.get("home")
    }

    @RequestMapping("")
    fun index(): String{
        return "menu/index"
    }
}