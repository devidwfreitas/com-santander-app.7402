.class final Lgrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljow;


# direct methods
.method constructor <init>(Ljow;)V
    .locals 0

    .prologue
    .line 1838
    iput-object p1, p0, Lgrb;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lgrb;->a:Ljow;

    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v0

    invoke-static {}, Lgpu;->l()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    invoke-static {v0, v1}, Lgpu;->a(Ljox;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    .line 1842
    return-void
.end method
