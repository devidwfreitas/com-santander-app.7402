.class public Lfca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method public constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;I)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lfca;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iput p2, p0, Lfca;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1013
    const-string v1, "SlidingMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing layerType. hardware? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lfca;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lfca;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lfca;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1015
    iget-object v0, p0, Lfca;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lfca;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1016
    iget-object v0, p0, Lfca;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lfca;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lfca;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1019
    :cond_0
    return-void

    .line 1013
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
