.class public Lfbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfbj;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field final synthetic d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method public constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 223
    if-nez p1, :cond_1

    iget-object v0, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfce;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfce;

    move-result-object v0

    invoke-interface {v0}, Lfce;->a()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfcc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfcc;

    move-result-object v0

    invoke-interface {v0}, Lfcc;->a()V

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lfbz;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfce;

    move-result-object v0

    invoke-interface {v0}, Lfce;->a()V

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
