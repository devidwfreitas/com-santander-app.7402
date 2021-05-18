.class Lmid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmic;


# direct methods
.method constructor <init>(Lmic;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lmid;->a:Lmic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmid;->a:Lmic;

    invoke-virtual {v0}, Lmic;->dismiss()V

    .line 54
    return-void
.end method
