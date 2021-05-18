.class public Last;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Last;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->f()V

    .line 389
    :cond_0
    return-void
.end method
