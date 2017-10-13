<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:bind="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    tools:context="${packageName}.activities.${activityName}Activity">

    <data>
        <variable
            name="viewModel"
            type="${packageName}.viewmodels.${activityName}ActivityViewModel" />

        <variable
            name="adapter"
            type="${packageName}.adapters.${generatedName}Adapter" />

    </data>

	<#if addFab>
    <FrameLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">
	</#if>

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

            <android.support.v7.widget.RecyclerView
                android:id="@+id/${idPrefix}_list"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:adapter="@{adapter}" />
        </LinearLayout>

	<#if addFab>
		
        <android.support.design.widget.FloatingActionButton
		    android:layout_width="56dp"
			android:layout_height="56dp"
			android:layout_gravity="bottom|right"
			android:layout_margin="24dp"
			android:elevation="5dp"
            android:onClick="@{() -> viewModel.fabClick()}"/>

    </FrameLayout>
	
	</#if>
</layout>
