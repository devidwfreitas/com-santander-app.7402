.class Lmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmr;


# direct methods
.method constructor <init>(Lmr;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lmv;->a:Lmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
