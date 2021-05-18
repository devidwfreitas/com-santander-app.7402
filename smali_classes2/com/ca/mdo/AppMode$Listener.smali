.class public interface abstract Lcom/ca/mdo/AppMode$Listener;
.super Ljava/lang/Object;
.source "AppMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mdo/AppMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBecameBackground(Landroid/content/Context;)V
.end method

.method public abstract onBecameForeground(Landroid/content/Context;)V
.end method
