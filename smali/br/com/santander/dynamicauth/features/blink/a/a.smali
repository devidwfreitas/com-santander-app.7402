.class public Lbr/com/santander/dynamicauth/features/blink/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

.field private b:Landroid/widget/VideoView;

.field private c:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private d:Lbr/com/santander/uisdk/edittext/SantanderEditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/blink/a/a;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CHALLENGE_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CHALLENGE_TYPE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "TOKEN_OPTOCAL_VIDEO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "TOKEN_OPTOCAL_VIDEO"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "TOKEN_OPTOCAL_SERIAL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "TOKEN_OPTOCAL_SERIAL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    sget v4, Lbr/com/santander/dynamicauth/R$id;->blink_video_view:I

    invoke-virtual {v0, v4}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->b:Landroid/widget/VideoView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    sget v4, Lbr/com/santander/dynamicauth/R$id;->blink_serial_text_view:I

    invoke-virtual {v0, v4}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    sget v4, Lbr/com/santander/dynamicauth/R$id;->blink_challenge_edit_text:I

    invoke-virtual {v0, v4}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/edittext/SantanderEditText;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->d:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    sget v4, Lbr/com/santander/dynamicauth/R$id;->blink_proceed_button:I

    invoke-virtual {v0, v4}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->e:Landroid/widget/Button;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    sget v4, Lbr/com/santander/dynamicauth/R$id;->blink_video_play_button:I

    invoke-virtual {v0, v4}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->f:Landroid/widget/Button;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_OTICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->b:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    invoke-virtual {v0, v3}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onFinish()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->blink_video_play_button:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->blink_proceed_button:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->d:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->d:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/blink/a/a;->a:Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;->finish()V

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v1

    new-instance v2, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;

    sget-object v3, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_OTICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;-><init>(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V

    goto :goto_0
.end method
