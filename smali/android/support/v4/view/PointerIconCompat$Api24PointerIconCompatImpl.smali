.class Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;
.super Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/PointerIconCompatApi24;->create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompatApi24;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompatApi24;->load(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
