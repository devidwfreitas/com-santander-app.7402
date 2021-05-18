.class Lgsa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgrz;

.field private b:Lcom/santander/app/components/view/SantanderCheckedTextView;


# direct methods
.method public constructor <init>(Lgrz;Lcom/santander/app/components/view/SantanderCheckedTextView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lgsa;->a:Lgrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lgsa;->b:Lcom/santander/app/components/view/SantanderCheckedTextView;

    .line 96
    return-void
.end method

.method static synthetic a(Lgsa;)Lcom/santander/app/components/view/SantanderCheckedTextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lgsa;->b:Lcom/santander/app/components/view/SantanderCheckedTextView;

    return-object v0
.end method
