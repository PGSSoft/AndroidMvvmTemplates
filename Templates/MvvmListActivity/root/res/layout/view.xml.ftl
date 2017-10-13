<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:bind="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">

    <data>
		<import type="android.view.View" />
        <variable
            name="viewModel"
            type="${packageName}.viewmodels.${viewName}ViewModel" />
    </data>

    <android.support.v7.widget.CardView
		android:id="@+id/${idPrefix}_main"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_margin="10dp"
        android:focusable="true"
        android:clickable="true"
        android:foreground="?android:attr/selectableItemBackground">

		<LinearLayout
			android:layout_width="match_parent"
			android:layout_height="wrap_content"
			android:orientation="horizontal">
					
			<TextView
				android:layout_width="0dp"
				android:layout_weight="1"
				android:layout_height="wrap_content"
				android:layout_gravity="center_vertical"
				android:layout_marginLeft="15dp"
				android:text="Bind item name here" />

			<#if includePopup && popupKind == "morebutton">
			<Button
				android:id="@+id/${idPrefix}_bMore"
				android:layout_width="wrap_content"
				android:layout_height="wrap_content"
				android:text="More"
				android:onClick="@{() -> viewModel.showMore()}" />
			</#if>

		</LinearLayout>		
			
    </android.support.v7.widget.CardView>
</layout>