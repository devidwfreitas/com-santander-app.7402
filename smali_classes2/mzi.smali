.class final Lmzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Dialog;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmzi;->a:Landroid/app/Dialog;

    iput p2, p0, Lmzi;->b:I

    iput-object p3, p0, Lmzi;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 162
    iget-object v0, p0, Lmzi;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 163
    iget v0, p0, Lmzi;->b:I

    if-ne v0, v3, :cond_2

    .line 164
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 165
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v4

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget v0, p0, Lmzi;->b:I

    if-ne v0, v5, :cond_3

    .line 169
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v4

    invoke-static {v0, v1, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 173
    :cond_3
    iget v0, p0, Lmzi;->b:I

    if-ne v0, v6, :cond_4

    .line 174
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v4

    invoke-static {v0, v1, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 177
    :cond_4
    iget v0, p0, Lmzi;->b:I

    if-ne v0, v7, :cond_1

    .line 179
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 180
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 181
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_5
    iget-object v0, p0, Lmzi;->c:Landroid/app/Activity;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v4

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v1, v3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v5

    invoke-static {v0, v1, v7}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
