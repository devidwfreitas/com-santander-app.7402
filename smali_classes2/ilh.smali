.class Lilh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Likx;


# direct methods
.method constructor <init>(Likx;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lilh;->a:Likx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 261
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->h(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 266
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->h(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 268
    iget-object v2, p0, Lilh;->a:Likx;

    invoke-virtual {v2}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 270
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 271
    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    const-wide v4, 0xcc01662600L

    add-long/2addr v0, v4

    .line 272
    iget-object v3, p0, Lilh;->a:Likx;

    invoke-static {v3}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 297
    :goto_0
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->h(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lilh;->a:Likx;

    invoke-static {v1}, Likx;->j(Likx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->j(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 307
    :goto_1
    return-void

    .line 275
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 277
    iget-object v1, p0, Lilh;->a:Likx;

    invoke-static {v1}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lili;

    invoke-direct {v1, p0}, Lili;-><init>(Lilh;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->j(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method
