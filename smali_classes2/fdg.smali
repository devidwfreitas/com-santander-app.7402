.class Lfdg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfda;


# direct methods
.method constructor <init>(Lfda;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lfdg;->a:Lfda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lfdg;->a:Lfda;

    invoke-static {v0}, Lfda;->d(Lfda;)V

    .line 389
    return-void
.end method
