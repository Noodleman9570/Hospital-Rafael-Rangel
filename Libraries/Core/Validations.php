<?php
class Validations
{
  public $name;
  public $value;
  

  /**
   *
   * @var array $patterns
   *
   */
  public $patterns = array(
    'email'    => '[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}',
    'text'     => '[\p{L}0-9\s-.,;:!"%&()?+\'°#\/@]+',
    'tel'      => '[01246]{4}-[0-9]{7}',
    'int'      => '[0-9]+',
    'words'    => '[\p{L}\s]+',
    'alphanum' => '[\p{L}0-9]+',
    'alpha'    => '[\p{L}]+',
    'temp' => '[3][5-9]',
  );


  public $errors = array();

  /**
   *
   * Nombre del campo
   *@param string $name
   *@return $this
   */

  public function name($name)
  {
    $this->name = $name;
    return $this;
  }

  /**
   *
   * Capturar el valor del campo
   *@param string $value
   *@return $this
   */
  public function value($value)
  {
    $this->value = $value;
    return $this;
  }


  public function pattern($name)
  {
    if ($name == 'array') {

            if (!is_array($this->value)) {
                $this->errors[] = nl2br('Formato del campo ' . $this->name . ' no es valido.');
            }
        } else {

            $regex = '/^(' . $this->patterns[$name] . ')$/u';
            if ($this->value != '' && !preg_match($regex, $this->value)) {
                $this->errors[] = nl2br('Formato del campo ' . $this->name . ' no es valido.');
            }
        }
        return $this;
  }


  /**
   *
   * Patter personalizado
   * @param string $pattern
   * @return $this
   */

  public function customPattern($pattern)
  {
    $regex  = '/^(' . $pattern . ')$/u';
    if ($this->value != '' && !preg_match($regex, $this->value)) {
      $this->errors[] = nl2br('Formato del campo ' . $this->name . ' no es valido');
    }
    return $this;
  }


  /**
   *
   * Campo obligatorios
   * @return this
   */

  public function required()
  {
    if ($this->value == '' || $this->value == null) {
      $this->errors[] = nl2br('El campo ' . $this->name . ' es requerido');
    }
    return $this;
  }

  /**
   *
   * Validar el minimo de un campo
   * @param int $min
   * @return this
   */

  public function min($length)
  {

    if (is_string($this->value)) {

      if (strlen($this->value) < $length) {
        $this->errors[] = nl2br('El campo ' . $this->name . ' es inferior al valor minimo permitido');
      }
    } else {
      if ($this->value < $length) {
        $this->errors[] = nl2br('El campo ' . $this->name . ' es inferior al valor minimo permitio');
      }
    }

    return $this;
  }


  public function rangeNum($min, $max)
  {
    if($this->value < $min || $this->value > $max) {
      $this->errors[] = nl2br('El valor del campo '. $this->name . ' esta fuera del rango posible['.$min.'-'.$max.']');
    }
    return $this;
  }



  
  /**
   *
   * Validar el minimo de un campo
   * @param int $minRge
   * @param int $maxRge
   * @return this
   */

   public function yearLimit($minRge, $maxRge)
   {
      $dateU = explode('-',$this->value);
      $dateU[0] = (int)$dateU[0];

      $datem = (int)date('Y');
      $dateM = $datem - $minRge;
      $datem = $datem-105;


      if($dateU[0]<$datem || $dateU[0]>$dateM)
      {
        $this->errors[] = nl2br('El campo '.$this->name.' esta fuera del rango');
      }
      return $this;
   }

    /**
   *
   * Validar el minimo de un campo
   * @param int $minRge
   * @param int $maxRge
   * @return this
   */

   public function monthLimit($minRge, $maxRge)
   {
      $dateU = explode('-',$this->value);
      $dateU[1] = (int)$dateU[1];

      $datem = (int)date('Y');
      $dateM = $datem - $minRge;
      $datem = $datem-$maxRge;


      if($dateU[1]<$datem || $dateU[1]>$dateM)
      {
        $this->errors[] = nl2br('El campo '.$this->name.' esta fuera del rango');
      }
      return $this;
   }

    /**
   *
   * Validar el minimo de un campo
   * @param int $minRge
   * @param int $maxRge
   * @return this
   */

   public function dayLimit($minRge, $maxRge)
   {
      $dateU = explode('-',$this->value);
      $dateU[2] = (int)$dateU[2];

      $datem = (int)date('Y');
      $dateM = $datem - $minRge;
      $datem = $datem-$maxRge;


      if($dateU[2]<$datem || $dateU[2]>$dateM)
      {
        $this->errors[] = nl2br('El campo '.$this->name.' esta fuera del rango');
      }
      return $this;
   }

    /**
   *
   * Validar el minimo de un campo
   * @param int $minRge
   * @param int $maxRge
   * @return this
   */

   public function hourLimit($from, $to)
   {
    
    if($this->value > '06:00' AND $this->value < '16:00'){

    }

   }

  /**
   *
   * Validar caractenes en campo maximo
   * @param int $max
   * @return this
   */

  public function max($length)
  {
    if (is_string($this->value)) {

      if (strlen($this->value) > $length) {
        $this->errors[] = nl2br('El campo ' . $this->name . ' es mayor al valor maximo permitido');
      }
    } else {
      if ($this->value > $length) {
        $this->errors[] = nl2br('El campo ' . $this->name . ' es mayor al valor maximo permitido');
      }
    }

    return $this;
  }


  /**
   *
   * Valida si un campo es igual o no 
   * @param mixed $value
   * @return this
   */

  public function equal($value)
  {
    if ($this->value != $value) {
      $this->errors[] = nl2br('El valor del campo ' . $this->name . ' no coincide');
    }
    return $this;
  }

  /**
   *
   * Valida si un campo es de tipo int
   *@param mixed $value
   *@return boolean
   */

  public function is_int($value)
  {
    if (filter_var($value, FILTER_VALIDATE_INT));
    return true;
  }

  /**
   *
   * Verifica si un valor es string del alfabeto
   * @param mixed $value
   * @return boolean
   */

  public function is_alpha($value)
  {
    if (filter_var($value, FILTER_VALIDATE_REGEXP, array('options' => array('regexp' => "/^[a-zA-Z]+$/"))));

    return true;
  }

  /**
   *
   * Validar si el valor trae letras y numeros
   *@param mixed $value
   *@return boolean
   */

  public function is_alphanum($value)
  {
    if (filter_var($value, FILTER_VALIDATE_REGEXP, array('options' => array('regexp' => "/^[a-zA-Z0-9]+$/"))));

    return true;
  }

  /**
   *
   * Verifica si el valor es un correo
   * @param mixed $value
   * @return boolean
   */

  public function is_email($value)
  {
    if (filter_var($value, FILTER_VALIDATE_EMAIL));
    return true;
  }



  /**================================================================================================
   * !                                          mostrando erroes o exito
   *   
   *   
   *   
   *
   *================================================================================================**/

  /**
   *
   * validado
   *@param boolean
   */

  public function isSuccess()
  {
    if (empty($this->errors)) {
      return true;
    }
  }

  /**
   *
   * Devolver los errores
   * @return array $this->errors
   */

  public function getErrors()
  {
    if (!$this->isSuccess()) {
      return $this->errors[0];
    }else{
      return $this->errors;
    }
  }

  /**
   *
   * Visualizar los erroes en HMTL
   *@return string $html
   */
  public function displayErrors()
  {
    $html = '<ul>';
    foreach ($this->getErrors() as $error) {
      $html += '<li>' . $error . '</li>';
    }
    $html += '</ul>';
    return $html;
  }

  /**
   *
   * Devuelve los erroes en string puro
   * @return boolean|string
   *
   */

  public function result()
  {
    if (!$this->isSuccess()) {
      foreach ($this->getErrors() as $error) {
        echo "$error\n";
      }
      
    } else {
      return true;
    }
  }
}