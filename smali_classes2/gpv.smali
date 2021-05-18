.class final Lgpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Ljox;->MENU_ITEM_SAIR:Ljox;

    invoke-static {}, Lgpu;->l()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    invoke-static {v0, v1}, Lgpu;->a(Ljox;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    .line 236
    return-void
.end method
