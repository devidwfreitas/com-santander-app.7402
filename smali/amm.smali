.class public Lamm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lamm;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lamm;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    .line 206
    const/4 v0, 0x0

    return v0
.end method
