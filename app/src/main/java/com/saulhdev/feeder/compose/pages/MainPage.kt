package com.saulhdev.feeder.compose.pages

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import com.saulhdev.feeder.compose.components.NonSlidePager
import com.saulhdev.feeder.compose.components.PagerNavBar
import com.saulhdev.feeder.compose.navigation.NavItem
import kotlinx.collections.immutable.persistentListOf

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun MainPage() {
    val pages = persistentListOf(
        NavItem.Overlay,
        NavItem.Settings,
        NavItem.Sources,
    )
    val pagerState = rememberPagerState(pageCount = { pages.size })

    Scaffold(
        containerColor = MaterialTheme.colorScheme.background,
        contentColor = MaterialTheme.colorScheme.onBackground,
        bottomBar = { PagerNavBar(pageItems = pages, pagerState = pagerState) },
    ) { paddingValues ->
        NonSlidePager(
            modifier = Modifier
                .padding(bottom = paddingValues.calculateBottomPadding())
                .fillMaxSize(),
            pagerState = pagerState,
            pageItems = pages,
        )
    }
}