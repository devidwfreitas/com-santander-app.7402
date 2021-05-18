.class public Lasj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lasj;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lase;->i(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasj;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 205
    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Lasi;

    move-result-object v0

    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v1

    invoke-virtual {v1}, Lard;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lasj;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iget-object v1, p0, Lasj;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Lasi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lasi;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lasj;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 217
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->e()V

    .line 212
    :cond_1
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lard;->f(Z)V

    .line 213
    const-string v0, "[ChatActivity]"

    const-string v1, "Action Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lasj;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->finish()V

    goto :goto_0
.end method
