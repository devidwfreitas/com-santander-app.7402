.class Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForeground(Landroid/app/Service;I)V
    .locals 0

    .prologue
    .line 101
    invoke-static {p1, p2}, Landroid/support/v4/app/ServiceCompatApi24;->stopForeground(Landroid/app/Service;I)V

    .line 102
    return-void
.end method
