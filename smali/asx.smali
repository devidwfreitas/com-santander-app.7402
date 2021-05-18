.class public Lasx;
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
    .line 466
    iput-object p1, p0, Lasx;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lasx;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lase;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const-string v1, "[ChatActivity]"

    const-string v2, " isTextValidToSend true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lasx;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 476
    iget-object v0, p0, Lasx;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v0, "[ChatActivity]"

    const-string v1, " isTextValidToSend false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
