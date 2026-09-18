/**
 * DevOps 00 - Interactive Client Application
 * Estudiante: Xhino
 * Practica: Publicacion de una web estatica en AWS S3 con IA + MCP
 */

document.addEventListener('DOMContentLoaded', () => {
  initClipboardButtons();
  initFlowStepInteractivity();
  displayDeploymentMeta();
});

/**
 * Permite copiar comandos de la terminal y endpoints con un clic
 */
function initClipboardButtons() {
  const copyButtons = document.querySelectorAll('.copy-btn');

  copyButtons.forEach((button) => {
    button.addEventListener('click', async () => {
      const targetId = button.getAttribute('data-target');
      const targetElement = document.getElementById(targetId);

      if (!targetElement) return;

      const textToCopy = targetElement.innerText.trim();

      try {
        await navigator.clipboard.writeText(textToCopy);
        const originalText = button.textContent;
        button.textContent = '✓ Copiado';
        button.style.background = 'var(--lime)';
        button.style.color = 'var(--ink)';

        setTimeout(() => {
          button.textContent = originalText;
          button.style.background = '';
          button.style.color = '';
        }, 2000);
      } catch (err) {
        console.error('Error al copiar al portapapeles:', err);
      }
    });
  });
}

/**
 * Interactividad en las tarjetas del flujo de trabajo
 */
function initFlowStepInteractivity() {
  const flowCards = document.querySelectorAll('.flow-list article');

  flowCards.forEach((card, index) => {
    card.style.cursor = 'pointer';
    card.addEventListener('mouseenter', () => {
      card.style.transition = 'transform 0.2s ease, background 0.2s ease';
      card.style.transform = 'translateY(-4px)';
      card.style.background = 'rgba(23, 37, 42, 0.03)';
    });

    card.addEventListener('mouseleave', () => {
      card.style.transform = 'none';
      card.style.background = 'transparent';
    });
  });
}

/**
 * Muestra información del navegador y estado local
 */
function displayDeploymentMeta() {
  const statusElement = document.getElementById('client-status-meta');
  if (statusElement) {
    const now = new Date();
    const formattedDate = now.toLocaleDateString('es-ES', {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    });
    statusElement.innerHTML = `Sesión web cargada: <strong>${formattedDate}</strong> | Entorno: <strong>AWS S3 Static Web</strong>`;
  }
}

