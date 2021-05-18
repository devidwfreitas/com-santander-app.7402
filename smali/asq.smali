.class public Lasq;
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
    .line 336
    iput-object p1, p0, Lasq;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 339
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->h()V

    .line 342
    :cond_0
    iget-object v0, p0, Lasq;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iget-object v1, p0, Lasq;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    sget v2, Lapo;->chat_disconnected_title:I

    invoke-virtual {v1, v2}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lasq;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    sget v3, Lapo;->chat_disconnected_message:I

    .line 343
    invoke-virtual {v2, v3}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lasq;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    sget v4, Lapo;->button_reconnect_squadchat:I

    .line 344
    invoke-virtual {v3, v4}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lasr;

    invoke-direct {v4, p0}, Lasr;-><init>(Lasq;)V

    new-instance v5, Lass;

    invoke-direct {v5, p0}, Lass;-><init>(Lasq;)V

    .line 342
    invoke-static/range {v0 .. v5}, Lase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 362
    return-void
.end method
