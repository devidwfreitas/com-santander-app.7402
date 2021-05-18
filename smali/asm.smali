.class public Lasm;
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
    .line 1033
    iput-object p1, p0, Lasm;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1037
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->k()V

    .line 1041
    :cond_0
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lard;->f(Z)V

    .line 1042
    iget-object v0, p0, Lasm;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->finish()V

    .line 1043
    return-void
.end method
