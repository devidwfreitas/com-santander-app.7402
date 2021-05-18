.class final Ldaw;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ldat;


# direct methods
.method private constructor <init>(Ldat;)V
    .locals 0

    iput-object p1, p0, Ldaw;->a:Ldat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldat;Ldau;)V
    .locals 0

    invoke-direct {p0, p1}, Ldaw;-><init>(Ldat;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Ldaw;->a:Ldat;

    invoke-static {v0}, Ldat;->a(Ldat;)Lcqg;

    move-result-object v0

    invoke-static {v0}, Ldat;->b(Lcqg;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
