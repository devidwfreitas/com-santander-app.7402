.class public Lasv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iput-object p2, p0, Lasv;->a:Landroid/os/Handler;

    iput-object p3, p0, Lasv;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lasv;->a:Landroid/os/Handler;

    iget-object v1, p0, Lasv;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 426
    iget-object v0, p0, Lasv;->a:Landroid/os/Handler;

    iget-object v1, p0, Lasv;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->g(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Laph;->ico_squadchat_send:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)Z

    .line 431
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iget-object v1, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->g(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Laph;->ico_squadchat_send_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)Z

    .line 436
    iget-object v0, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iget-object v1, p0, Lasv;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)V

    goto :goto_0
.end method
