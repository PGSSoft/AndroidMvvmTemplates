<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
	xmlns:tools="http://schemas.android.com/tools"
    xmlns:bind="http://schemas.android.com/apk/res-auto"
	xmlns:app="http://schemas.android.com/apk/res-auto"
	tools:context="${packageName}.activities.${activityName}Activity">
    <data>
        <variable name="viewModel" type="${packageName}.viewmodels.${activityName}ActivityViewModel" />
    </data>
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

		<#if addToolbar><android.support.v7.widget.Toolbar
            android:id="@+id/${idPrefix}_toolbar"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:background="@color/colorPrimary"
            app:theme="@style/ThemeOverlay.AppCompat.Dark.ActionBar" />
		</#if>
    </LinearLayout>
</layout>