.class public Laso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Laso;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 318
    if-ge p5, p9, :cond_0

    .line 319
    iget-object v0, p0, Laso;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->c(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lasp;

    invoke-direct {v1, p0}, Lasp;-><init>(Laso;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    :cond_0
    return-void
.end method
