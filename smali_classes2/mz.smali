.class Lmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmx;


# direct methods
.method constructor <init>(Lmx;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lmz;->a:Lmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lmz;->a:Lmx;

    iget-object v0, v0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->e(Lmr;)V

    return-void
.end method
