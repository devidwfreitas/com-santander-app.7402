.class public final Lcor;
.super Lcwv;


# static fields
.field public static final a:Ljava/lang/String; = "GooglePlayServicesErrorDialog"

.field public static final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "com.google.android.gms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "com.android.vending"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcwv;->e:I

    sput v0, Lcor;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcwv;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcwv;->e(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static a(ILandroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcor;->a(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0}, Lcor;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    :cond_0
    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcon;->a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcwv;->b(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcwv;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v0

    invoke-static {p1, p0}, Lcor;->a(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p0}, Lcor;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Lcon;->d(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1, p0}, Lcon;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 3

    invoke-static {p1, p0}, Lcor;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    :cond_0
    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-virtual {v0, p1, p0, p3, p4}, Lcon;->b(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, p1, p0, v2}, Lcon;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lctq;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)Lctq;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1, p4}, Lcon;->a(Landroid/content/Context;ILctq;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcon;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcwv;->d(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcwv;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcwv;->d(I)Z

    move-result v0

    return v0
.end method

.method public static b(ILandroid/app/Activity;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcor;->b(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static b(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcor;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcwv;->e(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcwv;->k(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcwv;->l(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
