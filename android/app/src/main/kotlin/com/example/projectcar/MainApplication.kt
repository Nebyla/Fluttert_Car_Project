package com.example.projectcar

import android.app.Application
import com.yandex.mapkit.MapKitFactory

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setApiKey("5135ca79-90d5-4452-9d18-db9c6d7561ca")
        MapKitFactory.setLocale("ru_RU") // или другой язык, по желанию
    }
}
